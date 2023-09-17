import 'package:flutter/material.dart';
import 'package:provider_grocery_app/core/grocery_item.dart';

class CartProvider extends ChangeNotifier {
//Cart Items
  final List<GroceryItem> _items = [];

//Get Cart Items
  List<GroceryItem> getCartItems() => _items;

//Update Cart Items
  void addItem(GroceryItem item) {
    _items.add(item);
    notifyListeners();
  }
}
