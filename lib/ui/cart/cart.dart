import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_grocery_app/provider/cart_provider.dart';
import 'package:provider_grocery_app/ui/cart/cart_widget.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    //Cart provider instance

    CartProvider cartProvider =
        Provider.of<CartProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Cart'),
      ),
      body: ListView.builder(
          //Cart Items length
          itemCount: cartProvider.getCartItems().length,
          itemBuilder: (context, index) {
            //Cart Item
            return CartWidget(item: cartProvider.getCartItems()[index]);
          }),
    );
  }
}
