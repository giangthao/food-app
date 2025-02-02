import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/category_item%5D.dart';
import 'package:food_app/models/fake_data.dart';


class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3/2,
      ),
      children: FAKE_CATEGORIES.map((eahCategory) => CategoryItem(category: eahCategory)).toList(),
    );
  }
}