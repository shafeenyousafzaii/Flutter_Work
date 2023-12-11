import 'package:calculator/views/re_sult.dart';
import 'package:calculator/views/wid_gets.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController num1 = TextEditingController();

  TextEditingController num2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Center(child: Text("Calculator"))
      ),
      body: Column(children: [
          customTextField(controller: num1 , hint :  "Enter first Number"),
          customTextField(controller: num2 , hint :  "Enter first Number"),
          customContainter( title : "Add", colorss :   Colors.white, onTap:  (){
            double r= double.parse(num1.text) + double.parse(num2.text);
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Result(result : r)));
          }),
          customContainter( title : "Mutiply", colorss :   Colors.white, onTap:  (){
              double r= double.parse(num1.text) * double.parse(num2.text);
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Result(result : r)));
          
          }),
          customContainter( title : "Subtract", colorss :   Colors.white, onTap:  (){
              double r= double.parse(num1.text) - double.parse(num2.text);
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Result(result : r)));
          
          }),
          customContainter( title : "Divide", colorss :   Colors.white, onTap:  (){
              double r= double.parse(num1.text) / double.parse(num2.text);
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Result(result : r)));
          
          }),
          
          


          
        
      ]),

    );
  }
}
