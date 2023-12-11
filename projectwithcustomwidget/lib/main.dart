import 'package:flutter/material.dart';

void main() {
  runApp(const UiWithCustomWidget());
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
//        const UiWithCustomWidget(); 
    
//   }

class UiWithCustomWidget extends StatelessWidget {
  const UiWithCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      MaterialApp(
      home :  Scaffold(
     body : SafeArea(
     child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(100.0),
        child: reuseableText(name: "SIGN UP") ,
      ),

     ],) 
     
      
    
       
     )
      )
     );      
    
  }
}


Widget reuseableText({String? name})
{
  return  
  Text(name??"");
} 