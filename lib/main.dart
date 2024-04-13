// ignore_for_file: override_on_non_overriding_member, prefer_typing_uninitialized_variables, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:my_app/pages/Homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" :(context) => HomePage()
      },
    );
  }
}