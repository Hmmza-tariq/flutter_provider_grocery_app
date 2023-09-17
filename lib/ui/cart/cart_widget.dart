import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_grocery_app/core/grocery_item.dart';
import 'package:provider_grocery_app/provider/wishlist_provider.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key, required this.item});
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
              Text(
                '\$${item.price}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    //Add Item to wishlist
                    Provider.of<WishlistProvider>(context, listen: false)
                        .addItem(item);
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Item Wishlisted')));
                  },
                  icon: const Icon(Icons.favorite))
            ],
          )),
    );
  }
}
