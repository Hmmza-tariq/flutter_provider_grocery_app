import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_grocery_app/provider/wishlist_provider.dart';
import 'package:provider_grocery_app/ui/wishlist/wishlist_widget.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    //wishlist Provider instance

    WishlistProvider wishlistProvider =
        Provider.of<WishlistProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Wishlist'),
      ),
      body: ListView.builder(
          //wishlist items length
          itemCount: wishlistProvider.getWishlistItems().length,
          itemBuilder: (context, index) {
            return WishlistWidget(
                //wishlist item
                item: wishlistProvider.getWishlistItems()[index]);
          }),
    );
  }
}
