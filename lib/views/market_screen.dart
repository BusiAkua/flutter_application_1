import 'package:flutter/material.dart';

class MarketsScreen extends StatelessWidget{
  const MarketsScreen({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: _MarketsScreen(),
    );
  }
}

class _MarketsScreen extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Markets page"),

    );
  }
}