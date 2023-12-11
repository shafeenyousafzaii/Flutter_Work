import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build (BuildContext context)
  {
    return const MaterialApp(
      home : Tutorial(),
    ); // MaterialApp
  }
}

class Tutorial extends StatefulWidget {
  const Tutorial ({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  int value=0;
  @override
  Widget build (BuildContext context ) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        setState(() {  // set state rebulds widget
          value++;
        });
      }, 
      child : const Icon(Icons.add),
      
      ),
      body:  Center(
      child: Text(value.toString(),
      style: const TextStyle(fontSize: 25),
      )
      ), 
      
    );
  }
}