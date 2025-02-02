import 'package:flutter/material.dart';
import 'package:food_app/models/fake_data.dart';
import 'package:food_app/models/food.dart';
import 'models/category.dart';

class FoodsPage extends StatelessWidget {
  static const String routerName = '/FoodsPage';
  Category? category;
  FoodsPage({this.category});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, Category>?;
    if (arguments == null) {
      return Scaffold(
        body: Center(child: Text("No category data")),
      );
    }
    this.category = arguments['category']!;
    List<Food> foods = FOODS.where((element) => element.categoryId == this.category?.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Foods from ${this.category!.content}"),
      ),
      body: Center(
        child: Center(
          child: ListView.builder(
              itemCount: foods.length,
              itemBuilder: (content, index) {
                Food food = foods[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        clipBehavior: Clip.hardEdge,
                        child: Center(
                          child: FadeInImage.assetNetwork(
                              placeholder: "assets/images/food-1.jpg",
                              image: food.urlName
                          ),
                        ),

                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 66,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 2)
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.timer, color: Colors.white, size: 25,),
                            Text('${food.duration.inMinutes} minutes', style:
                            TextStyle(fontSize: 22, color: Colors.white),)
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}