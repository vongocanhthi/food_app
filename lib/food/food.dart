import 'dart:math';

class Food{
  int id;
  String name;
  String urlImage;
  int categoryId;

  Food(this.name, this.urlImage, this.categoryId){
    this.id = Random().nextInt(1000);
  }
}