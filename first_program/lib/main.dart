// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: LoginUi(),
    );    
  }
}

class LoginUi extends StatelessWidget {
  const LoginUi ({super.key});

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
    // appBar: AppBar(
    //   backgroundColor: Colors.white,
    //   foregroundColor: Colors.black,
    //   title: const Text("Mera App"),
    //   elevation: 1.0,
    //   leading: const Icon( Icons.arrow_back_ios_new ),
    //   actions: const [
    //     Text("My app"),
    //     Text("My app")
    //   ],
    // ),
    // backgroundColor: const Color.fromARGB(255, 0, 0, 0) , 
    // body:  Center(
    //   child: SafeArea(child: Container(
    //     // color: Colors.blue,
    //     margin: const EdgeInsets.only(left: 50 ),
    //     padding: const EdgeInsets.only(left: 40 ),
    //     height: 100,
    //     width: 100 ,
    //     decoration:  BoxDecoration(
    //        color: const Color.fromARGB(255, 255, 255, 255),
    //        borderRadius: BorderRadius.circular(10),
    //       //  image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1965&q=80"))

    //     ),
    //     child:  const Center(child: Text("Hello World",style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),)),
        
    //     // child: Text("He  llo World"),
    //   )
      
      
      
      // 
    //   ),
    // )
      body: SafeArea(
        child : Padding(padding: const EdgeInsets.all(50),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Login" , style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold

              ),),
              const SizedBox(height: 20),
              const Text("By Signing in you are agreeing our " , style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold

              ),),
              const SizedBox(height: 0),
              const Text("Terms and conditions" , style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold

              ),),
              const SizedBox(height: 100),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Enter your email"
                  // labelText: "Email",
                ),

              ),
              const SizedBox(height: 25),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: "Enter your Password",
                  suffixIcon: Icon(Icons.visibility_off_outlined)
                  
                  // labelText: "Email",
                ),

              ),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.bottomRight,
                child: Text("Forget Password" , style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
              
                ),),
              ),
              const SizedBox(height: 50),
              SizedBox(
                
                height: 30,
                width: 280,
                
              child: ElevatedButton(onPressed: () {}, child: const Text("Login"))),
               const Text("or connect with " , style: TextStyle(
                  height:2,
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  
                
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 10 , left: 45),
                child: Row(
                  children: [
                    
                    SizedBox(
                      height: 40,
                      width: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('Images/Facebook.png'))),
                      SizedBox(
                      height: 35,
                      width: 56,
                      child: Align(
                        
                        child: Align
                        ( alignment: Alignment.center,
                          child: Image.asset('Images/Instagram_icon.png.webp')))),
                      SizedBox(
                      height: 55,
                      width: 73,
                      child: Align
                      (
                        alignment: Alignment.centerRight,
                        child: Image.asset('Images/linkedin-logo-linkedin-icon-transparent-free-png.webp'))),
                      SizedBox(
                      height: 55,
                      width: 73,
                      child: Align
                      (
                        alignment: Alignment.centerRight,
                        child: Image.asset('Images/unnamed.png'))),
                  
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    



























    ) ;
  }   
}