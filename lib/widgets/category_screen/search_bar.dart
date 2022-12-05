// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String label;
  final IconData icon;
  const SearchBar({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          label: Text(
            label,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          suffixIcon: Icon(
            icon,
            size: 26,
          ),
        ),
      ),
    );
  }
}
