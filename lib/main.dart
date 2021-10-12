import 'package:calcolatrice/group_widgets/expanded_row.dart';
import 'package:calcolatrice/calculator_screen.dart';
import 'package:calcolatrice/group_widgets/operation_button.dart';
import 'group_widgets/expanded_button.dart';
import 'group_widgets/typing_button.dart';
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
              flex: 3,
              child: CalculatorScreen(
                displayData: _str,
              ),
            ),
            //endregion

            // region First Row
            ExpandedRow(
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
                            'C',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.white
                            ),
                          )
                        )
                      )
                    )
                  ),

                  ExpandedButton(
                      action: '<-',
                      onPressedAction: () { deleteOne(); },
                    )

                ]
              ),
            //endregion

            // region Second Row
            ExpandedRow(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ExpandedButton(
                      action: '7',
                      onPressedAction: () { add('7'); },
                  ),
                  ExpandedButton(
                      action: '8',
                      onPressedAction: () { add('8'); },
                    ),
                  ExpandedButton(
                      action: '9',
                      onPressedAction: () { add('9'); },
                    ),
                  Expanded(
                    flex: 1,
                    child: OperationButton(
                      onPressedAction: () { add('÷'); },
                      symbol: "÷",
                    ),
                  ),
                ],

              ),
            // endregion

            //region Third Row
            ExpandedRow(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ExpandedButton(
                        action: '4',
                        onPressedAction: () { add('4'); },
                  ),
                  ExpandedButton(
                      action: '5',
                      onPressedAction: () { add('5'); },
                    ),
                  ExpandedButton(
                      action: '6',
                      onPressedAction: () { add('6'); },
                    ),
                  Expanded(
                    flex: 1,
                    child: OperationButton(
                      onPressedAction: () { add('x️'); },
                      symbol: "x️",
                    ),
                  ),
                ],
              ),
            // endregion

            // region Fourth Row
            ExpandedRow(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ExpandedButton(
                        action: '1',
                        onPressedAction: () { add('1'); },
                  ),
                  ExpandedButton(
                      action: '2',
                      onPressedAction: () { add('2'); },
                    ),
                  ExpandedButton(
                      action: '3',
                      onPressedAction: () { add('3'); },
                    ),
                  Expanded(
                    flex: 1,
                    child: OperationButton(
                      onPressedAction: () { add('-'); },
                      symbol: "-",
                    ),
                  ),
                ],
              ),
            //endregion

            //region Last Row
            ExpandedRow(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ExpandedButton(
                        action: '0',
                        onPressedAction: () { add('0'); },
                  ),
                  ExpandedButton(
                      action: '.',
                      onPressedAction: () { add('.'); },
                    ),
                  ExpandedButton(
                      action: '=',
                      onPressedAction: () { getResult(); },
                    ),
                  Expanded(
                    flex: 1,
                    child: OperationButton(
                      onPressedAction: () { add('+'); },
                      symbol: "+",
                    ),
                  ),
                ],
              )

          ],
        ),
      ),
    );
  }

  void deleteAll() {}

  void deleteOne() {}

  void add(String action) {}

  void getResult() {}
}