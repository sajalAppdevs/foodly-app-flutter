// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types

import 'package:flutter/material.dart';

class button_check extends StatelessWidget {
  final authUiData;
  const button_check({
    Key? key,
    this.authUiData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          onPressed: authUiData.ev,
          child: Text(authUiData.name_btn)),
    );
  }
}