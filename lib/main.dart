import 'package:flutter/material.dart';
import 'package:food_app/categorypage.dart';
import 'package:food_app/foodpage.dart';
import 'package:food_app/model/category.dart';
import 'package:food_app/model/fake_data.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        fontFamily: "Lobster Regular"
      ),
      routes: {
        CategoryPage.routerName: (context) => CategoryPage(listCategory: FAKE_CATEGORY),
        FoodPage.routerName: (context) => FoodPage()
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Food app"),
          centerTitle: true,
        ),
        body: Container(
          child: CategoryPage(listCategory: FAKE_CATEGORY),
        )
      ),
    );
  }
}