// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CourseContent extends StatelessWidget {
  final String title;
  const CourseContent({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white,
          blurRadius: 10,
          spreadRadius: 1,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue.shade100,
            maxRadius: 20,
            child: Icon(
              Icons.play_arrow,
              color: Colors.blue,
            ),
          ),
          Gap(10),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
