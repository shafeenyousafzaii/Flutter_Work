import 'package:flutter/material.dart';

Widget customTextField({TextEditingController?  controller , String? hint })
{
 return  TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: hint,
            // labelText: "Number 1",
          ),
          );  

}
Widget customContainter({String? title , Color? colorss , Function()? onTap})     
{ 
  return  GestureDetector(
          onTap: onTap,
           child: Container(
            alignment: Alignment.center,
             margin: const EdgeInsets.symmetric(vertical: 25),
              height: 50,
              width: 150,
              color:colorss,
              child :  Text(title??"")
              ),
  
            );
         


}