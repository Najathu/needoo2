import 'package:flutter/material.dart';

import 'ShopCategoryPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: ShopCategoriesPage( [
        "Food",
        "Books",
        "Electronics",
        "Grocery",
        "Clothing"
       ]),
    );
  }
}

