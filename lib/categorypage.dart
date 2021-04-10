import 'package:flutter/material.dart';
import 'package:food_app/categoryitem.dart';
import 'package:food_app/model/category.dart';

class CategoryPage extends StatelessWidget{
  static final String routerName = "/categorypage";

  List<Category> listCategory;
  CategoryPage({this.listCategory});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: listCategory.length,
        itemBuilder: (context, index){
          return CategoryItem(category: listCategory[index]);
        }
    );
  }

}