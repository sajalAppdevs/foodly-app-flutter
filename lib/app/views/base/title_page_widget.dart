import 'package:flutter/material.dart';

class TitlePageWidget extends StatelessWidget {
  const TitlePageWidget({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        text!,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}