import 'package:flutter/material.dart';

// Widget yang berpengaruh terhadap user action
class SampleStateful extends StatefulWidget {
  @override
  _SampleStatefulState createState() => _SampleStatefulState();
}

class _SampleStatefulState extends State<SampleStateful> {
  var angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Page"),
      ),
      body: Center(
        child: Text('Angka Sekarang: $angka'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            angka++;
          });
        },
      ),
    );
  }
}