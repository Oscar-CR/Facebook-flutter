import 'package:facebook_ui/constants/colors.dart';
import 'package:facebook_ui/modules/login/form.dart';
import 'package:facebook_ui/modules/login/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: SingleChildScrollView(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    FormLogin()
                    ],
                ))));
  }
}
