import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CenterLogoWidget extends StatelessWidget {
  const CenterLogoWidget({
    Key? key,
    required this.color,
    required this.color2,
    required this.color3,
  }) : super(key: key);
  final Color color, color2, color3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 110,
            height: 110,
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Icon(
              FontAwesomeIcons.utensils,
              color: color2,
              size: 60,
            ),
          ),
          Text(
            "Foodly",
            style: TextStyle(
                color: color3, fontWeight: FontWeight.bold, fontSize: 48),
          )
        ],
      ),
    );
  }
}
