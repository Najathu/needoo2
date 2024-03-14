import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MerchantListPage extends StatelessWidget {
  final String selectedCategory;

  MerchantListPage(this.selectedCategory);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> merchants = [
      {
        "name": "BigBasket",
        "distance": 21.999229222555766,
        "categories": [
          "Grocery",
          "Food"
        ]
      },
      {
        "name": "Croma",
        "distance": 9.224732393951385,
        "categories": [
          "Electronics"
        ]
      },
      {
        "name": "DCBooks",
        "distance": 20.293189366106613,
        "categories": [
          "Books"
        ]
      },
      {
        "name": "Sanha",
        "distance": 21.46750944238281,
        "categories": [
          "Clothing"
        ]
      }


    ];

    final filteredMerchants = merchants.where((merchant) =>
    merchant['categories'] != null &&
        merchant['categories'].contains(selectedCategory)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Merchants - $selectedCategory'),
      ),
      body: ListView.builder(
        itemCount: filteredMerchants.length,
        itemBuilder: (context, index) {
          final merchant = filteredMerchants[index];
          return ListTile(
            title: Text(merchant['name']),
            subtitle: Text('Distance: ${merchant['distance']}'),
            // Add more details as needed
          );
        },
      ),
    );
  }
}
