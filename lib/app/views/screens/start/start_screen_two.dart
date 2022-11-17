import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project2/app/views/screens/start/painter/painter.dart';
import 'package:project2/app/views/screens/start/widget/center_logo_widget.dart';
import '../../../util/color.dart';

class StartScreenTwo extends StatefulWidget {
  const StartScreenTwo({super.key});

  @override
  State<StartScreenTwo> createState() => _StartScreenTwoState();
}

class _StartScreenTwoState extends State<StartScreenTwo> {
  @override
  void initState() {
    Timer(const Duration(seconds: 6), () {
      Navigator.pushNamed(context, "/st");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: $home2(context));
  }

  Widget $home2(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Stack(
        children: [
          Stack(
            children: [
              CustomPaint(
                painter: CustomCircle(),
                child: Container(),
              ),
              const CenterLogoWidget(
                  color: orange, color2: Colors.white, color3: Colors.black),
              CustomPaint(
                painter: CustomCircle(bottom: true),
                child: Container(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
