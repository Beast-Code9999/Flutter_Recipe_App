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
      body: SingleChildScrollView( // ensure that column doesn't crash when overbound
        padding: EdgeInsets.all(16),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(recipe.description),

            // add margin
            SizedBox(height: 20,),  

            const Text(
              "Ingredients",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            ...recipe.ingredients.map((ingredient) => Text(ingredient)),

            SizedBox(height: 16,),  

            const Text(
              "Steps",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            
            ...recipe.steps.map((step) => Text(step)),
            ],
        ),
      )
    );
  }
}