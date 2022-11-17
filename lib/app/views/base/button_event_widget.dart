import 'package:flutter/material.dart';
import 'package:project2/app/util/color.dart';

class ButtonElevatedWidget extends StatelessWidget {
  const ButtonElevatedWidget({
    Key? key,
    this.event,
    this.text,
  }) : super(key: key);
  final String? text;
  final void Function()? event;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          onPressed: event,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(orange),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))))),
          child: Text(text!)),
    );
  }
}
