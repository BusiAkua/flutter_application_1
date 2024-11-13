import 'package:flutter/material.dart';
import 'package:flutter_application_1/Funding_Pages/form.dart';
import 'package:flutter_application_1/views/Funding_screen.dart';

class Application extends StatelessWidget{
  const Application({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ApplicationForm(),
    );
  }
}


class ApplicationForm extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: GestureDetector(
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => fundingScreen()));
          },
          child: Text("Application Form"),
        ),

          backgroundColor: const Color.fromARGB(255, 252, 244, 253),
      ),

      body: MyForm(),
    );
  
  }  
}
