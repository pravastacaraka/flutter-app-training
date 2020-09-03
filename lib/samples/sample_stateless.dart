import 'package:flutter/material.dart';

// Widget yang tidak berpengaruh terhadap user action
class SampleStateless extends StatelessWidget {
  var angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Page"),
      ),
      body: Center(
        child: Text('Angka Sekarang: $angka'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          angka++;
        },
      ),
    );
  }
}