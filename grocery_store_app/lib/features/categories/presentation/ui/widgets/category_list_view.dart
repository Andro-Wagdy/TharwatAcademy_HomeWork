import 'package:flutter/material.dart';
import 'package:grocery_store_app/features/categories/data/category_data.dart';
import 'package:grocery_store_app/features/categories/presentation/ui/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      child: ListView.builder(
        
        scrollDirection: .horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
      ),
    );
  }
}
