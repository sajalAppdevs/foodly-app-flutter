import 'package:flutter/material.dart';
import 'package:project2/app/util/color.dart';
import 'package:project2/app/util/util.dart';
import 'package:project2/app/views/base/button_event_widget.dart';
import 'package:project2/app/views/base/text_edit_verify_widget.dart';

class DialogVerifyAccountWidget extends StatelessWidget {
  const DialogVerifyAccountWidget({
    Key? key,
    this.c1,
    this.c2,
    this.c3,
    this.c4,
    this.controllerOne,
    this.controllerTwo,
    this.controllerTree,
    this.controllerFoure,
    this.evntVerify,
    this.eventAgain,
  }) : super(key: key);

  final Border? c1;
  final Border? c2;
  final Border? c3;
  final Border? c4;
  final TextEditingController? controllerOne;
  final TextEditingController? controllerTwo;
  final TextEditingController? controllerTree;
  final TextEditingController? controllerFoure;
  final void Function()? evntVerify;
  final void Function()? eventAgain;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 10,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Verify Phone Number",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                const Text(
                  "We Have Sent Code To Your Phone Number",
                  style: TextStyle(color: grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "+1 000 000 000",
                  style: TextStyle(color: greys),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextEditVerifyWidget(
                      bCheck: c1,
                      controller: controllerOne,
                    ),
                    TextEditVerifyWidget(
                      bCheck: c2,
                      controller: controllerTwo,
                    ),
                    TextEditVerifyWidget(
                      bCheck: c3,
                      controller: controllerTree,
                    ),
                    TextEditVerifyWidget(
                      bCheck: c4,
                      controller: controllerFoure,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonElevatedWidget(
                  text: "VERIFY",
                  event: evntVerify,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: Util.buttonStyle(bgc: reds),
                    onPressed: eventAgain,
                    child: const Text("SEND AGAIN",
                        style: TextStyle(color: orange)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
