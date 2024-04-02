import 'package:flutter/material.dart';

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\u2022 ',
          style: TextStyle(
            fontSize: 20, // You can adjust the size of the bullet point
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8), // Adjust spacing between bullet point and text
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16, // You can adjust the size of the text
            ),
          ),
        ),
      ],
    );
  }
}