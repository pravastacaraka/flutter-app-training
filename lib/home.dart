import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = [
    {
      "task": "Go jogging with Christin",
      "time": "07.00 AM",
      "status": "now"
    },
    {
      "task": "Send project file",
      "time": "08.00 AM",
      "status": "waiting"
    },
    {
      "task": "Meeting with client",
      "time": "10.00 AM",
      "status": "urgent"
    },
    {
      "task": "Email client",
      "time": "13.00 PM",
      "status": "waiting"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          color: Color(0xFFF8FCFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
                child: Text(
                  "Today",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8A88B1)
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, i) {
                        return Card(
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
                                child: Container(
                                    height: 80,
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            left: BorderSide(color: Colors.lightGreen, width: 8)
                                        )
                                    ),
                                    child: Center(
                                      // Table Content
                                        child: Table(
                                          columnWidths: {
                                            0: FlexColumnWidth(1),
                                            1: FlexColumnWidth(2),
                                            2: FlexColumnWidth(6),
                                            3: FlexColumnWidth(1),
                                          },
                                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                          children: [
                                            TableRow(
                                                children: [
                                                  Radio(
                                                    value: null,
                                                    groupValue: "",
                                                    onChanged: (value) {},
                                                  ),
                                                  Text(
                                                      data[i]['time'],
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Color.fromRGBO(0, 0, 0, 0.4)
                                                      )
                                                  ),
                                                  Text(
                                                    data[i]['task'],
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF574F89)
                                                    ),
                                                  ),
                                                  Icon(Icons.notifications, color: Color.fromRGBO(0, 0, 0, 0.15),)
                                                ]
                                            )
                                          ],
                                        )
                                    )
                                )
                            )
                        );
                      }
                  )
              )
            ],
          ),
        )
    );
  }
}