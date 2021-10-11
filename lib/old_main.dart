import 'package:flutter/material.dart';
import 'calculator_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

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
          // CalculatorScreen(displayData: _str ),
          Expanded(
              flex: 2,
              child:
              CalculatorScreen(displayData: _str,)
            /*Card(
              color: Colors.lightGreen,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  _str,
                  textScaleFactor: 2.0,
                ),
              ),
            ),*/
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextButton(
                  child: Text('C',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (){deleteAll();},
                  style: TextButton.styleFrom(
                      primary: Colors.white
                  ),
                ),
                TextButton(
                    child: Text(
                      '<-',),
                    onPressed: (){deleteOne();},
                    style: TextButton.styleFrom(
                        primary: Colors.black87
                    )
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          TextButton(
                              child: Text(
                                '7',),
                              onPressed: (){add('7');},
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                              )
                          ),
                          TextButton(
                            child: Text(
                              '8',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('8');},
                          ),
                          TextButton(
                            child: Text(
                              '9',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('9');},
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          TextButton(
                            child: Text(
                              '4',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('4');},
                          ),
                          TextButton(
                            child: Text(
                              '5',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('5');},
                          ),
                          TextButton(
                            child: Text(
                              '6',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('6');},
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          TextButton(
                            child: Text(
                              '1',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('1');},
                          ),
                          TextButton(
                            child: Text(
                              '2',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('2');},
                          ),
                          TextButton(
                            child: Text(
                              '3',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('3');},
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          TextButton(
                            child: Text(
                              '0',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('0');},
                          ),
                          TextButton(
                            child: Text(
                              '.',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {add('.');},
                          ),
                          TextButton(
                            child: Text(
                              '=',),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {getResult();},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextButton(
                          onPressed: (){add('÷');},
                          child: Image.asset("icons/divide.png",
                            width: 10.0,
                            height: 10.0,)
                      ),
                      TextButton(
                        child: Text('x'),
                        onPressed: () {add('x');},
                      ),
                      TextButton(
                        child: Text('-'),
                        onPressed: () {add('-');},
                      ),
                      TextButton(
                        child: Text('+'),
                        onPressed: () {add('+');},
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );

    throw UnimplementedError();
  }

  deleteAll() {}

  deleteOne() {}

  void add(String s) {}

  void getResult() {}

}