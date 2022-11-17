import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project2/app/views/screens/start/start_screen_two.dart';
import 'package:project2/app/views/screens/start/widget/center_logo_widget.dart';
import '../../../util/color.dart';

class StartScreenOne extends StatefulWidget {
  const StartScreenOne({super.key});

  @override
  State<StartScreenOne> createState() => _StartScreenOneState();
}

class _StartScreenOneState extends State<StartScreenOne> {
  @override
  void initState() {
    Timer(const Duration(seconds: 6), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const StartScreenTwo();
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: $home1());
  }

  Widget $home1() {
    return Container(
        color: orange,
        child: const CenterLogoWidget(
            color: Colors.white, color2: orange, color3: Colors.white));
  }
}
