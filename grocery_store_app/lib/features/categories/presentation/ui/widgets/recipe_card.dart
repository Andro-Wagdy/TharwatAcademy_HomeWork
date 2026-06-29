import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/categories/data/models/recipe_model.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key, required this.recipe});
  final RecipeModel recipe;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 263,
      height: 162,
      margin: .only(right: 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        image: DecorationImage(image: AssetImage(recipe.image), fit: .cover),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            bottom: 21,
            child: Text(
              recipe.title,
              style: AppStyles.p16W600.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
