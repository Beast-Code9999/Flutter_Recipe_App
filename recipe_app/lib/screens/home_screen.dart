import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({super.key});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  List<Recipe> recipeList= [];

  @override
  void initState() {
    super.initState();

  recipeList = [
    Recipe(
      id: "1",
      name: "Spaghetti Bolognese",
      description: "Classic Italian pasta with rich beef tomato sauce.",
      ingredients: [
        "200g spaghetti",
        "300g minced beef",
        "1 onion (chopped)",
        "2 cloves garlic",
        "400g canned tomatoes",
        "Salt & pepper"
      ],
      steps: [
        "Boil spaghetti according to package instructions.",
        "Cook onion and garlic until soft.",
        "Add minced beef and cook until browned.",
        "Add tomatoes and simmer for 15 minutes.",
        "Serve sauce over spaghetti."
      ],
      imageUrl: "https://example.com/spaghetti.jpg",
    ),
    Recipe(
      id: "2",
      name: "Chicken Stir Fry",
      description: "Quick and healthy chicken stir fry with vegetables.",
      ingredients: [
        "2 chicken breasts (sliced)",
        "1 capsicum",
        "1 carrot",
        "Broccoli florets",
        "2 tbsp soy sauce",
        "1 tbsp olive oil"
      ],
      steps: [
        "Heat oil in a pan.",
        "Cook chicken until golden.",
        "Add vegetables and stir fry for 5 minutes.",
        "Add soy sauce and cook another 2 minutes.",
        "Serve hot."
      ],
      imageUrl: "https://example.com/stirfry.jpg",
    ),
    Recipe(
      id: "3",
      name: "Pancakes",
      description: "Fluffy homemade breakfast pancakes.",
      ingredients: [
        "1 cup flour",
        "1 cup milk",
        "1 egg",
        "1 tbsp sugar",
        "1 tsp baking powder"
      ],
      steps: [
        "Mix all ingredients into a smooth batter.",
        "Heat a non-stick pan.",
        "Pour batter and cook until bubbles form.",
        "Flip and cook other side.",
        "Serve with syrup."
      ],
      imageUrl: "https://example.com/pancakes.jpg",
    ),
    Recipe(
      id: "4",
      name: "Greek Salad",
      description: "Fresh Mediterranean salad with feta cheese.",
      ingredients: [
        "Tomatoes",
        "Cucumber",
        "Red onion",
        "Feta cheese",
        "Olives",
        "Olive oil"
      ],
      steps: [
        "Chop all vegetables.",
        "Combine in a bowl.",
        "Add feta and olives.",
        "Drizzle olive oil on top.",
        "Toss and serve."
      ],
      imageUrl: "https://example.com/greeksalad.jpg",
    ),
    Recipe(
      id: "5",
      name: "Beef Tacos",
      description: "Mexican-style beef tacos with fresh toppings.",
      ingredients: [
        "Taco shells",
        "300g minced beef",
        "Taco seasoning",
        "Lettuce",
        "Cheese",
        "Salsa"
      ],
      steps: [
        "Cook minced beef with taco seasoning.",
        "Warm taco shells.",
        "Fill shells with beef.",
        "Add lettuce, cheese, and salsa.",
        "Serve immediately."
      ],
      imageUrl: "https://example.com/tacos.jpg",
    ),
  ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: recipeList.length,
        itemBuilder: (context, index) {
          return Text(recipeList[index].name);
        },
      ),
    );
  }
}