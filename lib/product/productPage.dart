import 'package:flutter/material.dart';
import 'package:flutter_products_app/product/product.dart';
import 'package:flutter_products_app/product/ratingBox.dart';

class ProductPage extends StatelessWidget{
  ProductPage({super.key, required this.item});
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name)
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("productPics/${item.image}"),
                Expanded(child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(item.name, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(item.description),
                      Text("Price: ${item.price.toString()}"),
                      const RatingBox()

                    ]

                  )
                ))
              ]
            )
          )
        )
        );

  }

}