import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;
  
  const RecipeDetailScreen({
    super.key,
    required this.recipe
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text(recipe.name),
      ),
      body: Center(
        child: Text(recipe.description),
      ),
    );
  }
}