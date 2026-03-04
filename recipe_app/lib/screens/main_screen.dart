import 'package:flutter/material.dart';
import 'package:recipe_app/screens/favourites_screen.dart';
import 'package:recipe_app/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [ // list of screens to navigate to
    RecipeScreen(),
    FavouritesScreen(),
  ];
  
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: _pages[_currentIndex],

      // bottom navigation for recipes and favourites that are shared within all screens
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