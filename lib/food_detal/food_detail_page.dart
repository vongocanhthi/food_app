import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/food/food.dart';

class FoodDetailPage extends StatelessWidget{
  Food _food;

  FoodDetailPage(this._food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${_food.name}"),
      ),
      body: Column(
        children: [
          FadeInImage.assetNetwork(
            placeholder: "assets/images/loading.gif",
            image: _food.urlImage,
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("${_food.id}"),
            ),
            title: Text(_food.name),
          )
        ],
      ),
    );
  }

}