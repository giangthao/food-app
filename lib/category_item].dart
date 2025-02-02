import 'package:flutter/material.dart';
import 'models/category.dart';

class CategoryItem extends StatelessWidget{
  Category category;
  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
   return Container(
     child: Container(
       padding: EdgeInsets.all(8),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text(this.category.content,
             style: Theme.of(context).textTheme.bodyLarge)
         ],
       ),
       decoration: BoxDecoration(
         gradient: LinearGradient(
             colors: [
               _color.withOpacity(0.6),
               _color
             ],
           begin: Alignment.topRight,
           end: Alignment.bottomLeft
         ),
         color: _color,
         borderRadius: BorderRadius.circular(20)
       ),
     ),
   );
  }
}