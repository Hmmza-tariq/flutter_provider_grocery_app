import 'package:flutter/material.dart';
import 'package:provider_grocery_app/data/grocery_data.dart';
import 'package:provider_grocery_app/ui/Home/home_grocery_widget.dart';
import 'package:provider_grocery_app/ui/cart/cart.dart';
import 'package:provider_grocery_app/ui/wishlist/wishlist.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Grocery Provider'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Wishlist())));
              },
              icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Cart())));
              },
              icon: const Icon(Icons.shopping_bag))
        ],
      ),
      body: ListView.builder(
          itemCount: GroceryData.items.length,
          itemBuilder: (context, index) {
            return GroceryWidget(item: GroceryData.items[index]);
          }),
    );
  }
}
