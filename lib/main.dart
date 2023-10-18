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
/*
class MyApp extends StatefulWidget{
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController controller;
  @override 
  void initState(){
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this
      );
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context){
    controller.forward();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: Products(title: "Product layout demo home page", animation: animation)
    )
  }
}
*/