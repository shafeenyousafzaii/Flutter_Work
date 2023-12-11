import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final  double result;
    const Result({super.key , required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBar(
        title:  const Text ( " Result Page "),

       ),
     body :   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,   
        children: [
           const Text("Result is : " , style : TextStyle(fontSize: 40)),
          Text(result.toString() , style: const TextStyle(fontSize: 40),),
        ],
        )
       ],)
    );
  }
}