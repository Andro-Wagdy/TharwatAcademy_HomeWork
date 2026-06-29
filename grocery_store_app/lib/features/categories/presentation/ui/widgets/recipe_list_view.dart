import 'package:flutter/material.dart';
import 'package:grocery_store_app/features/categories/data/recipe_data.dart';
import 'package:grocery_store_app/features/categories/presentation/ui/widgets/recipe_card.dart';

class RecipeListView extends StatelessWidget {
  const RecipeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 162,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(recipe: recipes[index]);
        },
      ),
    );
  }
}
