import 'package:flutter/material.dart';
import 'package:flutter_products_app/product/products.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData( primarySwatch: Colors.blue,),
      home: Scaffold(
        appBar: AppBar(title: const Text("Products listing")),
        body: Products(title: "Item list"),
        )
    );
  }
}



