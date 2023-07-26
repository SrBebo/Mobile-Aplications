import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:pokedex_mobile/providers/category_provider.dart';
import 'package:pokedex_mobile/providers/pokemon_provider.dart';
import 'package:provider/provider.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  void initState() {
    Provider.of<PokemonProvider>(context, listen: false).initPokemonList();
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, categoryProvider, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return Slidable(
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      final id = categoryProvider.categoriesGetter[index].id;
                      Provider.of<CategoryProvider>(context, listen: false)
                          .deleteCategory(id);
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Borrar',
                  ),
                ],
              ),
              child: Card(
                elevation: 10,
                child: ListTile(
                  leading: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMMPQcDRGKrz7FyNV1k452jskePRLw9_lumg&usqp=CAU'),
                    ),
                  ),
                  title: Text(
                    categoryProvider.categoriesGetter[index].name,
                  ),
                ),
              ),
            );
          },
          itemCount: categoryProvider.totalCategories,
        );
      },
    );
  }


}
