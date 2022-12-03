import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffccef),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(200, 100),
                  bottomRight: Radius.elliptical(200, 100),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.white, offset: Offset(0, 1))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Image(
                image: AssetImage(
                  'assets/images/online-education.png',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 30, right: 30),
            child: Text(
              'Study any Topic,Anytime',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, left: 30, right: 30),
            child: Text(
              'Choose from 150,000 online video courses\nwith new additions published every\nmonth',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 620, left: 40, right: 30),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Start Learning',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding: EdgeInsets.only(
                  left: 60,
                  right: 60,
                  top: 10,
                  bottom: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
