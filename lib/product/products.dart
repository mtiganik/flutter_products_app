

import 'package:flutter/material.dart';
import 'package:flutter_products_app/product/productBox.dart';



class Products extends StatelessWidget { 
   const Products({super.key, required this.title}); 
   final String title; 

   @override 
   Widget build(BuildContext context) {
      return ListView(
            shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0), 
            children: const <Widget> [
               ProductBox(
                  name: "iPhone", 
                  description: "iPhone is the stylist phone ever", 
                  price: 1000, 
                  image: "iphone.jpg"
               ), 
               ProductBox(
                  name: "Pixel", 
                  description: "Pixel is the most featureful phone ever", 
                  price: 800, 
                  image: "pixel.jpg"
               ), 
               ProductBox( 
                  name: "Laptop", 
                  description: "Laptop is most productive development tool", 
                  price: 2000, 
                  image: "laptop.jpg"
               ), 
               ProductBox( 
                  name: "Tablet", 
                  description: "Tablet is the most useful device ever for meeting", 
                  price: 1500, 
                  image: "tablet.jpg"
               ), 
               ProductBox(
                  name: "Pendrive", 
                  description: "Pendrive is useful storage medium", 
                  price: 100, 
                  image: "pendrive.jpg"
               ), 
               ProductBox(
                  name: "Floppy Drive", 
                  description: "Floppy drive is useful rescue storage medium", 
                  price: 20, 
                  image: "floppy.jpg"
               ), 
            ],
         );
   }
}
