import 'package:flutter/material.dart';
import 'package:food_app/categories_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Food\'s categories"),
        ),
        body: SafeArea(
          child: CategoriesPage(),
        ),
      ),
    );
  }
}
