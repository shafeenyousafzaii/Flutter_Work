import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
         home : Scaffold(
      )
    );
      
  }
}
/*
      body: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(name)
            ],
          ),
         ),
    
*/

class MeezanBank extends StatelessWidget {
  const MeezanBank({super.key});
 @override
 Widget build (BuildContext context)
 {
  return   const Scaffold(
    
              body :  Text("Hello"),
            //  Image.asset("assets/images/meezanbank.jpg")
    
          );
    
    
  
 }
}
