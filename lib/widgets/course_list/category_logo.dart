// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryLogo extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final Color color;
  const CategoryLogo({
    Key? key,
    required this.image,
    required this.title1,
    required this.title2,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 160,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Container(
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                ),
              ),
              maxRadius: 25,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title1,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue.shade900,
                ),
              ),
              Text(
                title2,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue.shade900,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
