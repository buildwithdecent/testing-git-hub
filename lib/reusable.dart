import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  final String title;
  final String description;

  const Reusable({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        Divider(height: 30, thickness: 1),
      ],
    );
  }
}

