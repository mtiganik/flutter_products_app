


import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  const PopUp({super.key});
  
 void _showDialog(BuildContext context){
   showDialog( 
      context: context, builder: (BuildContext context) { 
         // return object of type Dialog
         return AlertDialog( 
            title: const Text("Message"), 
            content: const Text("Hello World"),   
            actions: <Widget>[ 
                TextButton( 
                  child: const Text("Close"),  
                  onPressed: () {   
                     Navigator.of(context).pop();  
                  }, 
               ), 
            ], 
         ); 
      }, 
   ); 

}

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            onTap: () {
              _showDialog(context);
            },
            child: const Text(
              'Hello World',
            )));
  }
}

