import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:project2/app/model/page/app_info.dart';
import 'package:project2/app/util/constant.dart';
import 'package:project2/app/views/screens/auth/sign_up_screen.dart';

import '../../../util/color.dart';

class AppInfoScreen extends HookWidget {
  const AppInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final si1 = AppInfo(
        id: 0,
        di: 0,
        assetName: foodOyf,
        title: "Order Your Food",
        description: "Now you can order your food anytime from your mobile.");
    final si2 = AppInfo(
        id: 1,
        di: 1,
        assetName: foodSft,
        title: "Safe Food Transfer",
        description: "Now you can order your food anytime from your mobile.");
    final si3 = AppInfo(
        id: 2,
        di: 2,
        assetName: foodFd,
        title: "Fast Delivery",
        description: "Now you can order your food anytime from your mobile.");
    return Scaffold(
      body: $states(
        [
          si1,
          si2,
          si3,
        ],
        context,
      ),
    );
  }

  Widget $states(List<AppInfo> stateInfo, BuildContext context) {
    final v = useState(0);
    final cb = stateInfo.elementAt(v.value).di != 0
        ? InkWell(
            onTap: () {
              final ve = stateInfo.elementAt(v.value).di;
              if (ve == 1) {
                v.value = 0;
              } else if (ve == 2) {
                v.value = 1;
              }
            },
            child: Container(
              width: 55,
              height: 55,
              margin: const EdgeInsets.only(top: 40, left: 20),
              decoration: BoxDecoration(
                  color: reds, borderRadius: BorderRadius.circular(20)),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  final ve = stateInfo.elementAt(v.value).di;
                  if (ve == 1) {
                    v.value = 0;
                  } else if (ve == 2) {
                    v.value = 1;
                  }
                },
                color: orange,
              ),
            ),
          )
        : const SizedBox(
            width: 55,
            height: 55,
          );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(alignment: Alignment.topLeft, child: cb),
        Transform.translate(
          offset: const Offset(0, -30),
          child: Image.asset(stateInfo.elementAt(v.value).assetName,
              width: double.infinity, height: 400),
        ),
        Transform.translate(
          offset: const Offset(0, -40),
          child: Column(
            children: [
              Text(
                stateInfo.elementAt(v.value).title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                  width: 200,
                  child: Text(
                    stateInfo.elementAt(v.value).description,
                    style: const TextStyle(color: greys),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DotsIndicator(
                  dotsCount: 3,
                  position: stateInfo.elementAt(v.value).di,
                  decorator: DotsDecorator(
                      activeColor: orange,
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      color: grey2)),
              TextButton(
                onPressed: () {
                  if (stateInfo.elementAt(v.value).di == 2) {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => SignUpFoodScreen(),
                        transitionDuration: const Duration(seconds: 2),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                          opacity: a,
                          child: c,
                        ),
                      ),
                    );
                  } else {
                    v.value++;
                  }
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: orange),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
