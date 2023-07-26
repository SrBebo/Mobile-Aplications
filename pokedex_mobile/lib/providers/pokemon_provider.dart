import 'dart:collection';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex_mobile/dtos/pokemon_model.dart';

class PokemonProvider extends ChangeNotifier {
  final List<Pokemon> _pokemon = [];

  int get totalPokemons => _pokemon.length;

  UnmodifiableListView<Pokemon> get pokemons => UnmodifiableListView(_pokemon);

  Future<bool> checkPokemons() async {
    if (_pokemon.isEmpty) {
     await initPokemonList();
     return true;
    }
    return false;
  }

  Future<bool> initPokemonList() async {
    var client = http.Client();
    var response = await client.get(Uri.http('pokeapi.co', '/api/v2/pokemon')); 
    // ignore: avoid_print
    print('statusPokemon: ${response.statusCode}'); //codigo de retorno HTTP
    // codigo 20X --> tudo ok
    // codigo 40X --> error del cliente
    // codigo 50X --> error del servidor
    // ignore: avoid_print
    //print('pokemon List: ${response.body}');
    var decodedResponse = jsonDecode(response.body);
    var results = decodedResponse['results'] as List;
    for(var ri in results){
      var url = ri['url'] as String;
      await addPokemonList(url);
    }
    notifyListeners();
    return true;
  }

  Future<void> addPokemonList(String url) async{
    var client = http.Client();
    var response = await client.get(Uri.parse(url));
    var pokemonData = jsonDecode(response.body);
    /*
    var pokemon = Pokemon(
      id: pokemonData['id'],
      name: pokemonData['name'],
      imageUrl: pokemonData['sprites']['front_default']);
    )*/
    _pokemon.add(Pokemon.fromJson(pokemonData));
  }
}
