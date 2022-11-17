
import 'dart:math';

import 'package:flutter/material.dart';

class CardFoodSampleWidget extends StatelessWidget {
  const CardFoodSampleWidget({
    Key? key,
    required this.colors,
    this.assetname,
    this.title,
  }) : super(key: key);

  final List<Color> colors;
  final String? assetname;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(2),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          color: colors.elementAt(Random().nextInt(colors.length)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Text(title!),
          Image.asset(
            assetname!,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}