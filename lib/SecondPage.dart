import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  const SecondPage({Key? key, required this.title}) : super(key: key);


  final String title;


  @override
  State<StatefulWidget> createState()  => _SecondPageState();


}

  class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
    appBar: AppBar(
      title: Text("This is the second page"),
    ),
    body: Center(
       child: Text("Welcome to the second page!"),
  ),




    );
  }
  }





