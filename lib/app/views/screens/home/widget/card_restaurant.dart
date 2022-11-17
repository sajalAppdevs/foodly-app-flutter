import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/app/util/color.dart';

class Card_restaurant extends StatelessWidget {
  const Card_restaurant({
    Key? key,
    required this.colors,
    required this.v,
    required this.v2
  }) : super(key: key);

  final List<Color> colors;
  final dynamic v;
  final dynamic v2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 250,
      height: 140,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(v.assetname), fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 8),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: reds,
                      child: Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  v.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  v.time,
                  style: const TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(
                    width: double.infinity,
                    child: Text(
                      v.evoulation,
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 20,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const PageScrollPhysics(),
                      children: List.generate(
                          v.ingredients.length,
                          (ins) => Container(
                              width: 50,
                              margin: const EdgeInsets.only(right: 5),
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: colors
                                    .elementAt(Random().nextInt(colors.length)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                v.ingredients.elementAt(ins),
                                textAlign: TextAlign.center,
                              ))),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
