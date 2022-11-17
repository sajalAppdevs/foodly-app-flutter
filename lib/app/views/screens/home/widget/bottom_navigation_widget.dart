import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../util/color.dart';

// ignore: camel_case_types
class btm_navig_widget extends StatelessWidget {
  const btm_navig_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Container(
            width: 80,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: reds, borderRadius: BorderRadius.circular(20)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.house_outlined,
                    color: orange,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: orange),
                  )
                ]),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.heart,
            color: grey,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: grey,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: grey,
          ),
          label: '',
        ),
      ],
    );
  }
}
