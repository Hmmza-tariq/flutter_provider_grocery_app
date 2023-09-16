import 'package:flutter/material.dart';
import 'package:provider_grocery_app/provider/cart_provider.dart';
import 'package:provider_grocery_app/provider/wishlist_provider.dart';
import 'package:provider_grocery_app/ui/Home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider()),
    ChangeNotifierProvider<WishlistProvider>(create: (_) => WishlistProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
