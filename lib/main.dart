import 'package:flutter/material.dart';
import 'package:online_learning_app/screens/catagory_screen.dart';
import 'package:online_learning_app/screens/signup_screen.dart';
import 'package:online_learning_app/screens/welcome_screen.dart';

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
      // home: const CatagoryScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        SignupScreen.routeName: (context) => SignupScreen(),
        CatagoryScreen.routeName: (context) => CatagoryScreen(),
      },
    );
  }
}
