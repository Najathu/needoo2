import 'package:flutter/material.dart';

import 'MerchantList.dart';

class ShopCategoriesPage extends StatefulWidget {
  final List<String> shopCategories;

   ShopCategoriesPage(this.shopCategories);

  @override
  State<ShopCategoriesPage> createState() => _ShopCategoriesPageState();
}

class _ShopCategoriesPageState extends State<ShopCategoriesPage> {

  var img = [
    "assets/images/food.jpg",
  "assets/images/books.jpg",
  "assets/images/electronics.jpg",
  "assets/images/grocery.jpg",
  "assets/images/clothing.jpg"
  ];

   @override
   Widget build(BuildContext context) {
     return Scaffold(
     appBar: AppBar(
         title: Text('Shop Categories'),
       ),
       body: GridView.builder(
         itemCount: widget.shopCategories.length,
        itemBuilder: (context, index) {
          final category = widget.shopCategories[index];
          return Card(child:
              GestureDetector(
                    onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => MerchantListPage(category),
                         ),
                       );
                     },
            child: Container(
              child: Column(
                children: [
                  Expanded(child: Image(image: AssetImage(img[index]),)),

                  Text(category,style: TextStyle(color: Colors.black),)
                ],
              ),

            ),
          ));
        }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      ),
    );
  }
}