import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'category.dart';
import 'package:food_app/food/foods_page.dart';

class CategoryItem extends StatelessWidget {
  Category _category;

  CategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FoodsPage(_category),
        ));
      },
      splashColor: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _category.color.withOpacity(0.5),
                _category.color,
              ]),
        ),
        child: Center(
          child: Text(
            "${_category.content}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
