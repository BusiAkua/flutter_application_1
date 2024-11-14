import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Funding_screen.dart';

class Grants extends StatelessWidget{
  const Grants({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: GrantApplication(),
    );
  }
}


class GrantApplication extends StatelessWidget{
  const GrantApplication({super.key});


@override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: GestureDetector(
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => fundingScreen()));
          },
          child: Text("Application"),
        ),

          backgroundColor: const Color.fromARGB(255, 252, 244, 253),
      ),
    );
  
  }  
}