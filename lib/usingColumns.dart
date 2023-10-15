import 'package:flutter/material.dart';

class UsingColumn extends StatelessWidget {
  const UsingColumn({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        children: [Text('Hello World!'), Text("Hello world again")],
      )),
      );
  }
}
