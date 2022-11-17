// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:project2/app/util/color.dart';
import 'package:project2/app/util/util.dart';

@immutable
class socail_auth_widget extends StatelessWidget {
  final BuildContext? context;
  const socail_auth_widget({Key? key, this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width * 0.55,
          height: 2,
          color: grey,
        ),
        Text(
          "Continue With Accounts",
          style: TextStyle(color: Colors.grey.shade600),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
              style: Util.buttonStyle(bgc: Colors.white),
              onPressed: () {},
              child: const Text(
                "GOOGLE",
                style: TextStyle(color: Colors.black),
              ),
            )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: ElevatedButton(
                    style: Util.buttonStyle(bgc: Colors.blue),
                    onPressed: () {},
                    child: const Text("FACEBOOK"))),
          ],
        ),
      ],
    );
  }
}
