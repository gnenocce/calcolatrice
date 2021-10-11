import 'package:calcolatrice/calculator_screen.dart';
import 'package:calcolatrice/operation_button.dart';
import 'typing_button.dart';
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
  CalculatorHomePageState createState() => CalculatorHomePageState();
}

class CalculatorHomePageState extends State<CalculatorHomePage> {

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
            // region Calculator Screen
            Expanded(
              flex: 1,
              child: CalculatorScreen(
                displayData: _str,
              ),
            ),
            //endregion

            // region First Row
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.red),
                          // color: Colors.red,
                        child: TextButton(
                          onPressed: () { deleteAll(); },
                          child:  Text(
                            ('C'),
                          )
                        )
                      )
                    )
                  ),

                  Expanded(
                    flex:1,
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.black87
                        ),
                        // color: Colors.black87,
                        child: TextButton(
                          onPressed: () { deleteOne(); },
                          child:  Text(
                            ('<-'),
                          )
                        )
                      )
                    )
                  )

                ]
              )
            ),
            //endregion

            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: TypingButton(
                      action: '7',
                      onPressedAction: () { add('7'); },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TypingButton(
                      action: '8',
                      onPressedAction: () { add('8'); },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TypingButton(
                      action: '9',
                      onPressedAction: () { add('9'); },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: OperationButton(
                      onPressedAction: () { add('7'); },
                      image: AssetImage("icons/divide.png"),
                    ),
                  ),
                ],

              ),
            )

          ],
        ),
      ),
    );
  }

  void deleteAll() {}

  void deleteOne() {}

  void add(String action) {}
}