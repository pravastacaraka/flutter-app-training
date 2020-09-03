import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem(this.badge, this.title, this.borderColor);

  String badge;
  String title;
  MaterialColor borderColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Color.fromRGBO(0, 0, 0, 0.3),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        child: Container(
          height: 70,
          child: Row(
            children: [
              Container(height: 100, width: 7, color: borderColor,),
              SizedBox(width: 20,),
              Image.network(badge, width: 40,),
              SizedBox(width: 20,),
              Text(title, style: Theme.of(context).textTheme.headline6,),
            ],
          ),
        ),
      ),
    );
  }
}