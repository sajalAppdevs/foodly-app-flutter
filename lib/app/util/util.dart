import 'package:flutter/material.dart';

import 'color.dart';

class Util {
  static ButtonStyle buttonStyle({bgc}) {
    return ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(bgc),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  static Border showBorder({double? v}) {
    final bOrange = Border.all(color: orange, width: 1.5);
    final bGrey = Border.all(color: grey, width: 1.5);
    final c = v! > 0 ? bOrange : bGrey;
    return c;
  }

  static Widget backPage({void Function()? vc}) {
    return GestureDetector(
      onTap: vc,
      child: Container(
        width: 55,
        height: 55,
        margin: const EdgeInsets.only(top: 40, left: 20),
        decoration:
            BoxDecoration(color: reds, borderRadius: BorderRadius.circular(20)),
        child: const Icon(
          Icons.arrow_back,
          color: orange,
        ),
      ),
    );
  }
}
