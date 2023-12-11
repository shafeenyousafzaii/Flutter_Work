import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title : const Text ( " Home Screen 1 "),
      ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen2()),
              );
            },
            child: Container(
              height: 59,
              width: 200,
              color: Colors.blue,
              child : const Center(child: Text("Go to next screen 2")),
            ),
          ) 
          ),
    );
  }
}

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Center(child: Text("Home Screen 2")),
      ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context , MaterialPageRoute(builder: (context) => const HomeScreen3()));
            },
            onDoubleTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 59,
              width: 200,
              color: Colors.blue,
              child : const Center(child: Text("Go to next screen 3")),
            ),
          ) 
          ),
    );
  }
}
class HomeScreen3 extends StatelessWidget {
  const HomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Center(child: Text("Home Screen 3")),
      ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeScreen(),), (route) => false);
            },
            child: Container(
              height: 59,
              width: 200,
              color: Colors.blue,
              child : const Center(child: Text("Go back to screen 1")),
            ),
          ) 
          ),
    );
  }
}