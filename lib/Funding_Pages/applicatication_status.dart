import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Funding_screen.dart';

class Application extends StatelessWidget{
  const Application({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ApplicationStatus(),
    );
  }
}


class ApplicationStatus extends StatelessWidget{
  const ApplicationStatus({super.key});


@override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: GestureDetector(
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => fundingScreen()));
          },
          child: Text("Application Status"),
        ),

          backgroundColor: const Color.fromARGB(255, 252, 244, 253),
      ),
    );
  
  }  
}