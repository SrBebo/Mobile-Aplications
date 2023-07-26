import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/pokemon_provider.dart';
import '../widgets/pokemon_list.dart';

class PokemonScreenWidget extends StatefulWidget {
  const PokemonScreenWidget({super.key});

  @override
  State<PokemonScreenWidget> createState() => _PokemonScreenWidgetState();
}

class _PokemonScreenWidgetState extends State<PokemonScreenWidget> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemons"),
      ),
      body: FutureBuilder(
          future: Provider.of<PokemonProvider>(context, listen: false)
              .checkPokemons(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const PokemonList();
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
