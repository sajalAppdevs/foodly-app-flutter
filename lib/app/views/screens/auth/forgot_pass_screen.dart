import 'package:flutter/material.dart';
import 'package:project2/app/model/auth/login.dart';
import 'package:project2/app/views/base/button_event_widget.dart';
import 'package:project2/app/views/base/title_page_widget.dart';
import 'package:project2/app/views/screens/auth/widget/card_forget_pass_select.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({
    Key? key,
    required this.ftbn1,
    required this.ftbn2,
    this.context,
    this.event,
  }) : super(key: key);

  final Ftbn ftbn1;
  final Ftbn ftbn2;
  final BuildContext Function()? context;
  final void Function()? event;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitlePageWidget(
                  text: 'Forget Password',
                ),
                Transform.translate(
                    offset: const Offset(0, -15),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Select With Contact details should we use to reset your password",
                          style: TextStyle(color: Colors.grey.shade600),
                        ))),
                CardFPCreateWidget(
                  ftbn: ftbn1,
                  title: 'Email',
                  icon: Icons.email_outlined,
                ),
                const SizedBox(
                  height: 10,
                ),
                CardFPCreateWidget(
                  ftbn: ftbn2,
                  title: 'Phone',
                  icon: Icons.call_outlined,
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonElevatedWidget(
                  text: "NEXT",
                  event: event,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
