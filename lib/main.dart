import 'package:flutter/material.dart';
import 'package:flutter_train_bloc/BLoC/bloc_provider.dart';
import 'package:flutter_train_bloc/BLoC/home_bloc.dart';
import 'package:flutter_train_bloc/Ui/countryScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      bloc: HomeBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(body: SafeArea(top:false,child: CountryScreen())),
      ),
    );
  }
}


