import 'package:flutter/material.dart';

class TextEditVerifyWidget extends StatelessWidget {
  const TextEditVerifyWidget({
    Key? key,
    this.bCheck,
    this.controller,
  }) : super(key: key);

  final Border? bCheck;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          border: bCheck,
          borderRadius: BorderRadius.circular(13)),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
        showCursor: false,
        decoration: const InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
