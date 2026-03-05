import 'package:flutter/material.dart';
import 'package:recipe_app/screens/main_screen.dart';
import 'screens/recipes_screen.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

