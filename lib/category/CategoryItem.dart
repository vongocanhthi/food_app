import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/category/Category.dart';

class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: category.color,
      child: Text("${category.content}"),
    );
  }
}
