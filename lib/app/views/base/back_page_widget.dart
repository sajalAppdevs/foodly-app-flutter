import 'package:flutter/material.dart';
import 'package:project2/app/util/color.dart';

class BackPageWidget extends StatelessWidget {
  const BackPageWidget({
    Key? key,
    this.event,
  }) : super(key: key);
  final void Function()? event;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: event,
      child: Container(
          width: 60,
          height: 20,
          margin: const EdgeInsets.only(top: 8, left: 5),
          decoration: BoxDecoration(
              color: reds, borderRadius: BorderRadius.circular(20)),
          child: const Icon(
            Icons.arrow_back,
            color: orange,
          )),
    );
  }
}
