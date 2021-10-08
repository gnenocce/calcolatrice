import "package:flutter/material.dart";
import "calculator.dart";

class ExpandedButton extends StatelessWidget {

  ExpandedButton({required this.onPressed, required this.child, required this.color});

  final Widget child;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) =>
      Expanded(
        flex:1,
        child: FlatButton(
          onPressed: onPressed,
          child: child,
          color: color,
        ),
      );
}

class ExpandedRow extends StatelessWidget {

  ExpandedRow({required this.children, required this.crossAxisAlignment});

  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) =>
      Expanded(
        flex: 1,
        child: Row(
          children: children,
          crossAxisAlignment: crossAxisAlignment,
        ),
      );
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Calculator",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black26
      ),
      home: CalculatorHomePage(title: "Flutter Calculator" ),
    );
  }
}


class CalculatorHomePage extends StatefulWidget {
  CalculatorHomePage({required this.title});
  final String title;

  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}


class _CalculatorHomePageState extends State<CalculatorHomePage> {

  String _str = "0";
  var _calculation = Calculation();

  void add(String a) {
    setState((){
      _calculation.add(a);
      _str = _calculation.getString();
    });
  }

  void deleteAll() {
    setState(() {
      _calculation.deleteAll();
      _str = _calculation.getString();
    });
  }

  void deleteOne() {
    setState(() {
      _calculation.deleteOne();
      _str = _calculation.getString();
    });
  }

  void getResult() {
    setState(() {
      _str = _calculation.getResult().toString();
    });
    _calculation = new Calculation();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Card(
              color: Colors.lightGreen[50],
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  _str,
                  textScaleFactor: 2.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: FlatButton(
                    child: Text(
                      'C',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){deleteAll();},
                    color: Colors.black54,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    child: Text(
                        '<-',
                        style: TextStyle(color: Colors.white)
                    ),
                    onPressed: (){deleteOne();},
                    color: Colors.black87,
                  ),
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
                    children: <Widget>[
                      ExpandedRow(
                        crossAxisAlignment:  CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ExpandedButton(
                            child: Text(
                              '7',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('7');},
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '8',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('8');},
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '9',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('9');},
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                      ExpandedRow(
                        crossAxisAlignment:  CrossAxisAlignment.stretch,
                        children:<Widget>[
                          ExpandedButton(
                            child: Text(
                              '4',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('4');},
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '5',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('5');},
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '6',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('6');},
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                      ExpandedRow(
                        crossAxisAlignment:  CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ExpandedButton(
                            child: Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('1');},
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '2',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('2');},
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                                '3',
                                style: TextStyle(color: Colors.white)
                            ),
                            onPressed: () {add('3');},
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                      ExpandedRow(
                        crossAxisAlignment:  CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ExpandedButton(
                            child: Text(
                              '0',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('0');},
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '.',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {add('.');},
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(child: Text('=',), onPressed: () {
                            getResult();
                          },
                              color: Colors.blue),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ExpandedButton(
                          child: Image.asset(
                            "icons/divide.png",
                            width: 10.0,
                            height: 10.0,
                          ),
                          onPressed: () {add('÷');},
                          color: Colors.blue,
                      ),
                      ExpandedButton(
                        child: Text('x'),
                        onPressed: () {add('x');},
                        color: Colors.blue,
                      ),
                      ExpandedButton(
                        child: Text('-'),
                        onPressed: () {add('-');},
                        color: Colors.blue,
                      ),
                      ExpandedButton(
                        child: Text('+'),
                        onPressed: () {add('+');},
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}