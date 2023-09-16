import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_grocery_app/core/grocery_item.dart';
import 'package:provider_grocery_app/provider/cart_provider.dart';
import 'package:provider_grocery_app/provider/wishlist_provider.dart';

class GroceryWidget extends StatelessWidget {
  const GroceryWidget({super.key, required this.item});
  final GroceryItem item;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: ListTile(
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Image.network(item.imageUrl),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                onPressed: () {
                  Provider.of<WishlistProvider>(context, listen: false)
                      .addItem(item);
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Item Wishlisted')));
                },
                icon: const Icon(Icons.favorite_border)),
            IconButton(
                onPressed: () {
                  Provider.of<CartProvider>(context, listen: false)
                      .addItem(item);
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Item Carted')));
                },
                icon: const Icon(Icons.shopping_bag_outlined))
          ],
        ),
      ),
    );
  }
}
