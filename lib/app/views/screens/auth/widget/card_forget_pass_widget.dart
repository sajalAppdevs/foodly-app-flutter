import 'package:flutter/material.dart';

class CardForgotPassWidget extends StatelessWidget {
  const CardForgotPassWidget({
    Key? key,
    required this.brd,
    required this.bgc,
    required this.cicon,
    this.event,
    this.icon,
    this.title,
    this.body,
  }) : super(key: key);

  final BorderSide? brd;
  final Color? bgc;
  final Color? cicon;
  final IconData? icon;
  final String? title;
  final String? body;
  final void Function()? event;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: event,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), side: brd!),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(shape: BoxShape.circle, color: bgc),
                child: Icon(
                  icon,
                  color: cicon,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    'Code Send to your Phone ${body!}',
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
