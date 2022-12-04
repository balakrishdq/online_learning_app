// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SingleField extends StatelessWidget {
  final String title;
  final IconData iconName;
  final bool obscureText;
  final TextInputType keyType;
  SingleField({
    Key? key,
    required this.title,
    required this.iconName,
    required this.obscureText,
    required this.keyType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              blurStyle: BlurStyle.inner,
              spreadRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          obscureText: obscureText,
          keyboardType: keyType,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: title,
            suffixIcon: Icon(
              iconName,
              color: Colors.black,
            ),
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
