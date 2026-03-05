import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Recipe> favourites;

  const FavouritesScreen({
    super.key,
    required this.favourites,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: favourites.length,
          itemBuilder: (context, index) {
            return Text(favourites[index].name);
          }),
      ),
    );
  }
}