import 'package:flutter/material.dart';
import 'package:project2/app/model/auth/signup.dart';
import 'package:project2/app/views/base/button_event_widget.dart';
import 'package:project2/app/views/base/text_edit_widget.dart';
import 'package:project2/app/views/base/title_page_widget.dart';

class ResetPassScreen extends StatelessWidget {
  const ResetPassScreen({
    Key? key,
    required this.se1,
    required this.se2,
  }) : super(key: key);

  final SignEdit se1;
  final SignEdit se2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitlePageWidget(
                  text: 'Reset Your',
                ),
                const SizedBox(
                  height: 30,
                ),
                TextEditingWidget(
                  hintText: "Password",
                  controller: se1.controller,
                  prefixIcon: Icons.lock_outline,
                  subfixIcon: Icons.remove_red_eye_outlined,
                  v: se1.v,
                ),
                TextEditingWidget(
                  hintText: "Confirme Password",
                  controller: se2.controller,
                  prefixIcon: Icons.lock_outline,
                  subfixIcon: Icons.remove_red_eye_outlined,
                  v: se2.v,
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtonElevatedWidget(
                  text: 'Reset',
                  event: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}