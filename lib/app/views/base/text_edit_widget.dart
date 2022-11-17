import 'package:flutter/material.dart';
import 'package:project2/app/util/color.dart';

class TextEditingWidget extends StatelessWidget {
  const TextEditingWidget({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.subfixIcon,
    this.controller,
    this.v,
  }) : super(key: key);
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? subfixIcon;
  final TextEditingController? controller;
  final double? v;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: v! > 0
              ? Border.all(
                  color: orange,
                  width: 1,
                  style: BorderStyle.solid,
                )
              : Border.all(color: Colors.white)),
      child: TextField(
        controller: controller,
        style: const TextStyle(),
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          prefixIconColor: grey,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: grey),
          suffixIcon: Icon(subfixIcon),
          suffixIconColor: grey,
        ),
      ),
    );
  }
}
