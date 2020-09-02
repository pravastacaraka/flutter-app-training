import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'To Do List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Color(0xFFF8FCFF),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
                    child: Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8A88B1)
                      ),
                    ),
                  ),

                  // Card Section
                  Card(
                    elevation: 5,
                    shadowColor: Color.fromRGBO(0, 0, 0, 0.3),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                      ),

                      // Card Body
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.lightGreenAccent, width: 8)
                          )
                        ),
                        child: Center(
                          // Table Content
                          child: Table(
                            columnWidths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(8),
                              2: FlexColumnWidth(),
                            },
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            children: [
                              TableRow(
                                children: [
                                  Text(
                                    "07.00 AM",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(0, 0, 0, 0.4)
                                    )
                                  ),
                                  Text(
                                    "Go jogging with Christin",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF574F89)
                                    ),
                                  ),
                                  Icon(Icons.notifications)
                                ]
                              )
                            ],
                          )
                        )
                      )
                    )
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Color.fromRGBO(0, 0, 0, 0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: Table(
                          columnWidths: {
                            0: FlexColumnWidth(2),
                            1: FlexColumnWidth(8),
                            2: FlexColumnWidth(),
                          },
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  "08.00 AM",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 0, 0, 0.4)
                                  )
                                ),
                                Text(
                                  "Send project file",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF574F89)
                                  ),
                                ),
                                Icon(Icons.notifications)
                              ]
                            )
                          ],
                        )
                      )
                    )
                  )
                ],
              )
            )
          ],
        ),
      )
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
