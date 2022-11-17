import 'package:flutter/material.dart';
import 'package:project2/app/util/color.dart';
import 'package:project2/app/views/screens/auth/widget/social_auth_widget.dart';

class EventMoreAuthWidget extends StatelessWidget {
  const EventMoreAuthWidget(
      {Key? key, this.body, this.text, this.event, this.context})
      : super(key: key);
  final String? body;
  final String? text;
  final void Function()? event;
  final BuildContext Function()? context;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              body!,
              style: TextStyle(color: Colors.grey.shade500),
            ),
            TextButton(
                onPressed: event,
                child: Text(
                  text!,
                  style: const TextStyle(color: orange),
                )),
          ],
        ),
        socail_auth_widget(
          context: context,
        )
      ],
    );
  }
}