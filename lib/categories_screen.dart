import 'package:flutter/material.dart';
import 'package:food_encylopedia/category_item.dart';
import 'package:food_encylopedia/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: dummy_categories.map((data){
        CategoryItem(title: data.title,color: data.color,);
      }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20
      ),
    );
  }
}