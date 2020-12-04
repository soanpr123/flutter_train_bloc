import 'package:flutter/material.dart';

class ItemCountry extends StatelessWidget {
  String title;

  ItemCountry({this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 50,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(title,style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
