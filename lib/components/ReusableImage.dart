import 'package:flutter/material.dart';

class ReusableImage extends StatelessWidget {

  final String imagePath;
  ReusableImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        imagePath,
      ),
    );
  }
}
