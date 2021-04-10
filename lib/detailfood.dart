import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';

class DetailFood extends StatelessWidget {
  Food food;

  DetailFood({this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/imgs/loading.gif',
              image: food.urlImg,
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Column(children: [
                Center(
                  child: Text("List component:"),
                )
              ])),
          Expanded(
              child:
              ListView.builder(
                  itemCount: food.component.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text("#${index + 1}"),
                      ),
                      title: Text("${food.component[index]}"),
                    );
                  })

          )
        ],
      ),
    );
  }
}
