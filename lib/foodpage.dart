import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/detailfood.dart';
import 'package:food_app/model/category.dart';
import 'package:food_app/model/fake_data.dart';
import 'package:food_app/model/food.dart';

class FoodPage extends StatelessWidget {
  static final routerName = "/foodpage";
  Category category;

  FoodPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Object> arguments = ModalRoute
        .of(context)
        .settings
        .arguments;
    this.category = arguments["category"];
    List<Food> foods = FAKE_FOOD
        .where((element) => element.categoryId == category.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("List foods of ${category.content}"),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.builder(
              itemCount: foods.length,
              itemBuilder: (context, index) {
                Food food = foods[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DetailFood(food: food,))
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          clipBehavior: Clip.hardEdge,
                          child: FadeInImage.assetNetwork(

                            placeholder: 'assets/imgs/loading.gif',
                            image: food.urlImg,
                          ),
                        ),
                      ),

                      Positioned(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black45,
                            border: Border.all(color: Colors.white, width: 2),

                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                '${food.timeToCompleted.inMinutes
                                    .toString()} minius',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        top: 20,
                        left: 30,
                      ),
                      Positioned(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: food.complexity == Complexity.Simple
                                ? Colors.green
                                : food.complexity == Complexity.Medium
                                ? Colors.yellow
                                : Colors.red,
                          ),
                          child: Text(
                            food.complexity == Complexity.Simple
                                ? "Simple"
                                : food.complexity == Complexity.Medium
                                ? "Medium"
                                : "Hard",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        top: 20,
                        right: 30,
                      ),
                      Positioned(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black45,
                          ),
                          child: Text(
                            '${food.name}',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                        bottom: 20,
                        right: 30,
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
