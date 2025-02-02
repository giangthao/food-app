import 'package:flutter/material.dart';
import 'category.dart';
import 'food.dart';

const FAKE_CATEGORIES = const [
  Category(id: 1, content: 'Fruits', color: Colors.red),
  Category(id: 2, content: 'Vegetables', color: Colors.green),
  Category(id: 3, content: 'Meat', color: Colors.brown),
  Category(id: 4, content: 'Seafood', color: Colors.blue),
  Category(id: 5, content: 'Dairy Products', color: Colors.yellow),
  Category(id: 6, content: 'Beverages', color: Colors.purple),
  Category(id: 7, content: 'Snacks', color: Colors.orange),
  Category(id: 8, content: 'Fast Food', color: Colors.teal),
  Category(id: 9, content: 'Desserts', color: Colors.pink),
  Category(id: 10, content: 'Spices & Herbs', color: Colors.cyan),
  Category(id: 11, content: 'Bakery', color: Colors.amber),
  Category(id: 12, content: 'Grains & Cereals', color: Colors.deepOrange),
  Category(id: 13, content: 'Organic Food', color: Colors.lightGreen),
  Category(id: 14, content: 'Frozen Food', color: Colors.indigo),
  Category(id: 15, content: 'Sauces & Condiments', color: Colors.deepPurple),
  Category(id: 16, content: 'Nuts & Seeds', color: Colors.lime),
  Category(id: 17, content: 'Breakfast Foods', color: Colors.blueGrey),
  Category(id: 18, content: 'Street Food', color: Colors.redAccent),
  Category(id: 19, content: 'Gourmet & Fine Dining', color: Colors.brown),
  Category(id: 20, content: 'Home-Cooked Meals', color: Colors.purpleAccent),
];


var FOODS =  [
   Food(
       name: 'sushi',
       urlName: 'https://images.squarespace-cdn.com/content/v1/5cb9ef147eb88c5caefa30b3/1706782670356-6YFHG6Q6A616ANTMKTE7/Chilaquiles+-+Breakfast+from+7+Different+Countries+-+Her86m2+4.jpg?format=300w',
       duration: Duration(minutes: 20),
       ingredients: ['Nori', 'Rice', 'Sugar', 'Salt', 'Fish'],
       categoryId: 1,
       complexity: Complexity.Hard
   ),
  Food(
      name: 'sushi',
      urlName: 'https://images.squarespace-cdn.com/content/v1/5cb9ef147eb88c5caefa30b3/1706782670356-6YFHG6Q6A616ANTMKTE7/Chilaquiles+-+Breakfast+from+7+Different+Countries+-+Her86m2+4.jpg?format=300w',
      duration: Duration(minutes: 20),
      ingredients: ['Nori', 'Rice', 'Sugar', 'Salt', 'Fish'],
      categoryId: 1,
      complexity: Complexity.Hard
  ),
  Food(
      name: 'sushi',
      urlName: 'https://images.squarespace-cdn.com/content/v1/5cb9ef147eb88c5caefa30b3/1706782670356-6YFHG6Q6A616ANTMKTE7/Chilaquiles+-+Breakfast+from+7+Different+Countries+-+Her86m2+4.jpg?format=300w',
      duration: Duration(minutes: 20),
      ingredients: ['Nori', 'Rice', 'Sugar', 'Salt', 'Fish'],
      categoryId: 1,
      complexity: Complexity.Hard
  )
];