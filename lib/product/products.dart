

import 'package:flutter/material.dart';
import 'package:flutter_products_app/product/product.dart';
import 'package:flutter_products_app/product/productBox.dart';
import 'package:flutter_products_app/product/productPage.dart';



class Products extends StatelessWidget { 
   Products({super.key, required this.title}); 
   final String title; 
   final items = Product.getProducts();

   @override 
   Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index)  {
          return GestureDetector(
            child: ProductBox(item: items[index]),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => ProductPage(item: items[index])
                  )
              );
            }
          );
        },
      );
   }
}
