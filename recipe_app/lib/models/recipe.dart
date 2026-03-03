class Recipe {
  String id;
  String name;
  String description;
  List<String> ingredients;
  List<String> steps;
  String imageUrl;

  Recipe( {
    required this.id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.steps,
    required this.imageUrl,
  });
}
