import 'package:flutter/material.dart';
import 'package:project2/app/model/auth/login.dart';
import 'package:project2/app/util/color.dart';
import 'package:project2/app/views/screens/auth/widget/card_forget_pass_widget.dart';

class CardFPCreateWidget extends StatelessWidget {
  const CardFPCreateWidget({
    Key? key,
    required this.ftbn,
    this.icon,
    this.title,
  }) : super(key: key);

  final Ftbn? ftbn;
  final IconData? icon;
  final String? title;
  @override
  Widget build(BuildContext context) {
    final bgc = ftbn?.v == true ? orange : reds;
    final cicon = ftbn?.v == true ? Colors.white : orange;
    final brd = ftbn?.v == true
        ? const BorderSide(color: orange, width: 1)
        : const BorderSide(color: Colors.white);
    return CardForgotPassWidget(
      brd: brd,
      bgc: bgc,
      cicon: cicon,
      event: ftbn!.cn,
      icon: icon,
      title: title,
      body: title,
    );
  }
}
