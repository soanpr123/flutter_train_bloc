import 'package:flutter/cupertino.dart';

abstract class Bloc{
  void init();
  void build(BuildContext context);
  void dispose();

}