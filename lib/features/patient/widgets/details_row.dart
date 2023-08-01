import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  final String title;
  final String content;

  const DetailsRow({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Text(content),
      ],
    );
  }
}
