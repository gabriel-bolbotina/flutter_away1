import 'package:flutter/material.dart';
import 'package:flutter_away1/SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page',
          style: TextStyle(
          color: Colors.amberAccent,
            fontStyle: FontStyle.italic,
        ),
        ),
      backgroundColor: Colors.purple,
      foregroundColor: Colors.purpleAccent,




      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[


            Text(
              'Go to the other page',
            style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                fontSize: 25)
              ,
            ),


        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage(title: 'title')),
            );
          },
          backgroundColor: Colors.amberAccent,
      ),
  //adding the login set-up
    );

  }
}
