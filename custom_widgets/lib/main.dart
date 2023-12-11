import 'package:flutter/material.dart';

void main() {
  runApp(const CustomWidget());
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        home: Scaffold(
            body: SafeArea(
      child: Column(children: [
       Center(child: customContainer(height:  100,width: 100 , colorss : Colors.black,  child : const Center(child: Text("Shafeen" , style: TextStyle(color: Colors.white),)))),
       Center(child: customContainer(height: 100,width: 100  ,colorss :   Colors.blue, child : const Center(child: Center(child: Text("Khizer", style: TextStyle(color: Colors.black),))))),
       Center(child: customContainer(height:  100,width: 100  ,colorss : Colors.red, child :  const Center(child: Icon(Icons.add_alarm_sharp , color: Colors.white,)))),
       
      ]
      ),
    )
    )
    );
  }
}
// ignore: must_be_immutable
// class CustomContainer extends StatelessWidget {
//    CustomContainer({super.key, required this.name, required this.color, required this.height, required this.width});
//   String name;
//   Color color;
//   double height;
//   double width;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: height,
//         width: width,
//         color: color,
//         child: Center(child: Text(name)),
//       ),
//     );
//   }
// }
Widget customContainer({double? height, double? width, Color? colorss, Widget? child})
{
  return Container(
    height: height,
    width: width,
    color:  colorss,
    child: child,
  );
}