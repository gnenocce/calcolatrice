import 'package:flutter/material.dart';

void main() =>
    runApp(MyFakeApp());

class MyFakeApp extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: "Flutter Calculator",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black26
      ),
      home: CalculatorHomePage(title: "Flutter Calculator", key: UniqueKey(), ),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  CalculatorHomePage(
      {
        required Key key,
        required this.title
      }
      ) : super(key: key);

  final String title;
  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {

  late String _str = '0';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.lightGreen[50],
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  _str,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}