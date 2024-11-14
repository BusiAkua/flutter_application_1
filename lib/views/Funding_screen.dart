import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_screen.dart';
import 'package:flutter_application_1/Funding_Pages/applicatication_status.dart';
import 'package:flutter_application_1/Funding_Pages/application_form.dart';
import 'package:flutter_application_1/Funding_Pages/grant_requirements.dart';
import 'package:flutter_application_1/Funding_Pages/grant_application.dart';
import 'package:flutter_application_1/Funding_Pages/grant_outcome.dart';


class fundingScreen extends StatelessWidget{
  const fundingScreen({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: _FundingScreen(),
    );
  }
}

class _FundingScreen extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen())
            );
          }, 
          icon: Icon(Icons.arrow_back)
          ),
            Text("Funding",)]),

          backgroundColor: const Color.fromARGB(255, 252, 244, 253),
      ),
    body: Column(
      children: <Widget>[
        Container(
          margin:EdgeInsets.fromLTRB(10, 20, 10, 5) ,
          alignment: Alignment.topLeft,
          child: Text("Bursaries",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10
          ),),
        ),

        Container(
          
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Application Form",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),),
              IconButton(onPressed: (){
                 Navigator.push(
              context, MaterialPageRoute(builder: (context) => ApplicationForm())
            );
              }, 
              icon: Icon(Icons.arrow_forward)),
            ]),
        ),

        Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Application Status",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),),
              IconButton(onPressed: (){
                 Navigator.push(
              context, MaterialPageRoute(builder: (context) => ApplicationStatus())
            );
              }, 
              icon: Icon(Icons.arrow_forward)),
            ]),
        ),

        Container(
          margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
          alignment: Alignment.topLeft,
          child: Text("Grants",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10
          ),),
        ),

        Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Requirements",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),),
              IconButton(onPressed: (){
                 Navigator.push(
              context, MaterialPageRoute(builder: (context) => GrantRequirements())
            );
              }, 
              icon: Icon(Icons.arrow_forward)),
            ]),
        ),

        Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Application",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),),
              IconButton(onPressed: (){
                 Navigator.push(
              context, MaterialPageRoute(builder: (context) => GrantApplication())
            );
              }, 
              icon: Icon(Icons.arrow_forward)),
            ]),
        ),

        Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Outcome",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),),
              IconButton(onPressed: (){
                 Navigator.push(
              context, MaterialPageRoute(builder: (context) => GrantOutcome())
            );
              }, 
              icon: Icon(Icons.arrow_forward)),
            ]),
        ),
      ],
    ),

    )
    
    ;
  }

}