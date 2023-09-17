import 'package:flutter/material.dart';
import 'package:provider_grocery_app/core/grocery_item.dart';

class WishlistProvider extends ChangeNotifier {
//Wishlist Items
  final List<GroceryItem> _items = [];

//Get Wishlist Items
  List<GroceryItem> getWishlistItems() => _items;

//Update Wishlist Items
  void addItem(GroceryItem item) {
    _items.add(item);
    notifyListeners();
  }
}
