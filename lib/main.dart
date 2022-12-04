import 'package:flutter/material.dart';
import 'package:online_learning_app/screens/signup_screen.dart';
import 'package:online_learning_app/screens/welcome_screen.dart';
import 'package:online_learning_app/widgets/signup_screen/signup_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SignupScreen(),
    );
  }
}
