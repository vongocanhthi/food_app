import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/category/category_item.dart';
import '../common/data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Food's Categories",
            style: TextStyle(fontFamily: 'Antic'),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: DATA_CATEGORIES.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 2/1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return CategoryItem(DATA_CATEGORIES[index]);
            },
          ),
        ));
  }
}
