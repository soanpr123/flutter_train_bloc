import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;
  TextTitle({this.title});
  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),);
  }
}

class TextDesCription extends StatelessWidget {
  final String description;
  TextDesCription({this.description});
  @override
  Widget build(BuildContext context) {
    return Text(description,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13,color: Colors.black),);
  }
}
