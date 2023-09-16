import 'package:flutter/material.dart';
import 'package:provider_grocery_app/core/grocery_item.dart';

class WishlistProvider extends ChangeNotifier {
  final List<GroceryItem> _items = [];

  List<GroceryItem> getWishlistItems() => _items;

  void addItem(GroceryItem item) {
    _items.add(item);
    notifyListeners();
  }
}
