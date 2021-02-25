import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_app/category/category.dart';
import 'package:food_app/food_detal/food_detail_page.dart';
import 'file:///D:/Project%20Flutter/food_app/lib/common/data.dart';

import 'food.dart';

class FoodsPage extends StatelessWidget {
  Category _category;
  List<Food> _foods;

  FoodsPage(this._category);

  @override
  Widget build(BuildContext context) {
    _foods =
        DATA_FOODS.where((food) => food.categoryId == _category.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("${_category.content}"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _foods.length,
          itemBuilder: (context, index) {
            Food _food = _foods[index];
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FoodDetailPage(_food),
                ));
              },
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      clipBehavior: Clip.hardEdge,
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/images/loading.gif",
                        image: _food.urlImage,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cake_outlined,
                            color: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                          Text(
                            "${_food.name}",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
