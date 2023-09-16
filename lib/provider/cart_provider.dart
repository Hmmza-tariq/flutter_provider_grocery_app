import 'package:flutter/material.dart';
import 'package:provider_grocery_app/core/grocery_item.dart';

class CartProvider extends ChangeNotifier {
  final List<GroceryItem> _items = [];

  List<GroceryItem> getCartItems() => _items;

  void addItem(GroceryItem item) {
    _items.add(item);
    notifyListeners();
  }
}
