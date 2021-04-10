import 'package:flutter/material.dart';
import 'package:food_app/foodpage.dart';
import 'package:food_app/model/category.dart';

class CategoryItem extends StatelessWidget{
  Category category;
  CategoryItem({this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("On tap item: " + category.content);
        //cách để chuyển màn. Cách 1:
        //Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPage(category: category,)));
        Navigator.pushNamed(context, FoodPage.routerName, arguments: {"category": category});
      },
      splashColor: Colors.green,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              category.content.toString(),
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Lobster Regular",
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red[50], Colors.red[900]],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight
            ),
            borderRadius: BorderRadius.circular(10)
        ),
      )
    );
  }

}