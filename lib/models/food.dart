import 'nutrition.dart';

class Food {
  final int id;
  final String title;
  final String image;
  final String duration;
  final double rate;
  final List<String> ingredients;
  final List<String> recipes;
  final List<Nutrition> nutrition;

  Food({
    required this.id,
    required this.title,
    required this.image,
    required this.duration,
    required this.rate,
    required this.ingredients,
    required this.recipes,
    required this.nutrition,
  });
}
