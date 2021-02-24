import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/category/CategoryItem.dart';
import 'data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        children:
            DATA_CATEGORIES.map((category) => CategoryItem(category)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio:  1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
