import 'package:flutter/material.dart';
import 'calculator_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // actual app content and data
      title: "Flutter Calculator",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorHomePage(title: "Flutter Calculator"),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  final String title;
  CalculatorHomePage({Key, key, required this.title}) : super(key: key);


  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {

  String _str ="0";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CalculatorScreen(displayData: _str ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                child: Text('C',
                style: TextStyle(color: Colors.white),
                ),
                onPressed: (){deleteAll();},
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                      ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                    ],
                  ),
                ]
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                ],
              )
            ],
          )
        ],
      ),
    );

    throw UnimplementedError();
  }

  deleteAll() {}

}