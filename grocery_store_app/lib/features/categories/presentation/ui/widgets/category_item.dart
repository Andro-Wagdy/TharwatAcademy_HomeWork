import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/features/categories/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 16, horizontal: 27),
      margin: .only(right: 10),
      decoration: ShapeDecoration(
        color: AppColors.container,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        shadows: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 19,
            offset: Offset(9, 0),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Image.asset(category.image, fit: .cover),
    );
  }
}
