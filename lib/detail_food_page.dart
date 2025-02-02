import 'package:flutter/material.dart';
import 'models/food.dart';

class DetailFoodPage extends StatelessWidget{
  Food food;
  DetailFoodPage({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('This is detail food'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: this.food.urlName,
                image: this.food.urlName),
          ),
         Container(
           padding: EdgeInsets.all(16),
           child:  Text("Ingredients", style: TextStyle(fontSize: 26),),
         ),
          Expanded(
              child: ListView.builder(
                  itemCount: this.food.ingredients.length,
                  itemBuilder: (context, index) {
                    String ingredient = this.food.ingredients[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text('${index + 1}', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                      title: Text(ingredient, style: TextStyle(fontSize: 20),),

                    );
                  }))
        ],
      )

    );
  }
}