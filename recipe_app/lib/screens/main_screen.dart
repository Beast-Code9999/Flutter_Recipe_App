import 'package:flutter/material.dart';
import 'package:recipe_app/screens/favourites_screen.dart';
import 'package:recipe_app/screens/recipes_screen.dart';
import 'package:recipe_app/models/recipe.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List<Recipe> favourites = [];


  @override
  Widget build(BuildContext context) { 

    final List<Widget> _pages = [ // list of screens to navigate to
    RecipeScreen( // RecipeScreen with two parameters
      favourites: favourites,
      onFavouriteToggle: (recipe) {
        setState(() {
          if (favourites.any((r) => r.id == recipe.id)) {
            favourites.removeWhere((item) => item.id == recipe.id); // remove recipe from favourites list if already exist when longPress
          } else {
            favourites.add(recipe); // add recipe if doesn't exist on favourites on longPress
          }
        });
      },
    ),
    FavouritesScreen( // FavouriteScreen with one parameter
      favourites: favourites,
    ),
  ];
  
    return Scaffold(
      body: _pages[_currentIndex], // allows for different pages to load

      // bottom navigation for items recipes and favourites that are shared within all screens
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: "Recipes",
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favourites",
          ),
        ]
      ),
    );
  }
}