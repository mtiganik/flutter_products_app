

import 'package:flutter/material.dart';

class _RatingBox extends StatefulWidget {
  const _RatingBox();

   @override 
   _RatingBoxState createState() =>_RatingBoxState(); 
} 

class _RatingBoxState extends State<_RatingBox> {
   int _rating = 0; 
   void _setRatingAsOne() {
      setState(() {
         _rating = 1; 
      }); 
   } 
   void _setRatingAsTwo() {
      setState(() {
         _rating = 2; 
      }); 
   }
   void _setRatingAsThree() {
      setState(() {
         _rating = 3;
      });
   }
  
  @override
   Widget build(BuildContext context) {
      double size = 20; 
      print(_rating); 
      return Row(
         mainAxisAlignment: MainAxisAlignment.end, 
         crossAxisAlignment: CrossAxisAlignment.end, 
         mainAxisSize: MainAxisSize.max, 
         children: <Widget>[
            Container(
               padding: EdgeInsets.all(0), 
               child: IconButton(
                  icon: (
                     _rating >= 1? 
                     Icon( 
                        Icons.star, 
                        size: size, 
                     ) 
                     : Icon(
                        Icons.star_border, 
                        size: size, 
                     )
                  ), 
                  color: Colors.red[500], 
                  onPressed: _setRatingAsOne, 
                  iconSize: size, 
               ), 
            ), 
            Container(
               padding: const EdgeInsets.all(0), 
               child: IconButton(
                  icon: (
                     _rating >= 2? 
                     Icon(
                        Icons.star, 
                        size: size, 
                     ) 
                     : Icon(
                        Icons.star_border, 
                        size: size, 
                     )
                  ), 
                  color: Colors.red[500], 
                  onPressed: _setRatingAsTwo, 
                  iconSize: size, 
               ), 
            ), 
            Container(
               padding: const EdgeInsets.all(0), 
               child: IconButton(
                  icon: (
                     _rating >= 3 ? 
                     Icon(
                        Icons.star, 
                        size: size, 
                     ) 
                     : Icon( 
                        Icons.star_border, 
                        size: size, 
                     )
                  ), 
                  color: Colors.red[500], 
                  onPressed: _setRatingAsThree, 
                  iconSize: size, 
               ), 
            ), 
         ], 
      ); 
   }
}
