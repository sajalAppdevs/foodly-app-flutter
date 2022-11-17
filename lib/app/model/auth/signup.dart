// ignore_for_file: must_be_immutable, overridden_fields, annotate_overrides, unnecessary_null_comparison, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:project2/app/views/screens/auth/sign_in_screen.dart';
import '../../util/color.dart';

class SignData {
  late BuildContext context;
  late String full_name;
  late String email;
  late String password;

  SignData(
      {required this.context,
      required this.full_name,
      required this.email,
      required this.password});
}

class SignActions {
  late BuildContext context;
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late double vl1;
  late double vl2;
  late double vl3;
  late String name_btn;
  late void Function() ev;
  late void Function() sign;

  SignActions(
      {required this.context,
      required this.controller1,
      required this.controller2,
      required this.controller3,
      required this.vl1,
      required this.vl2,
      required this.vl3,
      required this.name_btn,
      required this.ev,
      required this.sign})
      : assert(
          controller1 != null,
          controller2 != null,
        );
}

class SignDialogUI {
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;
  late void Function()? verfiy;
  late void Function()? again;
  late double vc1;
  late double vc2;
  late double vc3;
  late double vc4;

  SignDialogUI({
    required this.controller1,
    required this.controller2,
    required this.controller3,
    required this.controller4,
    required this.verfiy,
    required this.again,
    required this.vc1,
    required this.vc2,
    required this.vc3,
    required this.vc4,
  });
}

class NewSign {
  late BuildContext context;
  late void Function() signin;

  NewSign({
    required this.context,
    required this.signin,
  });
}

class LanchData {
  late List<Widget> data;
  late SignPage v;

  LanchData({required this.data, required this.v});
}

class SignLast {
  late TextEditingController controller;
  late double v;
  late void Function() action;

  SignLast({required this.controller, required this.v, required this.action});
}

class SignEdit {
  late TextEditingController controller;
  late double v;

  SignEdit({
    required this.controller,
    required this.v,
  });
}

enum SignPage {
  sign,
  pch,
  dialog,
}

enum ActionsName { register, signIn, facebook, google }

@immutable
abstract class Actions {
  const Actions();
}

class CustomActions extends Actions {
  late ActionsName actionsName;
  late SignData signData;
  bool active = false;
  CustomActions({
    required this.actionsName,
    signData,
  }) {
    if (signData != null) {
      this.signData = signData;
    }
  }

  void register() {
    if (actionsName.index == 0 &&
        signData.full_name != null &&
        signData.email != null &&
        signData.password != null) {
      ScaffoldMessenger.of(signData.context).showSnackBar(const SnackBar(
          backgroundColor: orange,
          content: Text(
            "is Regiter Successfly",
            textAlign: TextAlign.center,
          )));
    } else {
      ScaffoldMessenger.of(signData.context)
          .showSnackBar(const SnackBar(content: Text("is Regiter Error")));
    }
  }

  void signIn() {
    // bool go = false;
    if (actionsName.index == 1) {
      Navigator.push(
          signData.context,
          PageRouteBuilder(
              pageBuilder: (_, __, ___) =>const LoginFood(),
              transitionDuration: const Duration(seconds: 2),
              transitionsBuilder: (_, a, __, c) => FadeTransition(
                    opacity: a,
                    child: c,
                  )));
    }
  }
}

class CustomActionRegister extends CustomActions {
  @override
  late ActionsName actionsName;
  late SignData signData;
  CustomActionRegister({required this.actionsName, required this.signData})
      : super(actionsName: actionsName, signData: signData);
}

class CustomActionSignIn extends CustomActions {
  late ActionsName actionsName;
  late SignData siignData;
  CustomActionSignIn({required this.actionsName, required this.siignData})
      : super(actionsName: actionsName, signData: siignData);
}

class CustomActionfb extends CustomActions {
  late ActionsName actionsName;
  CustomActionfb({required this.actionsName}) : super(actionsName: actionsName);
}

class CustomActiongl extends CustomActions {
  late ActionsName actionsName;
  CustomActiongl({required this.actionsName}) : super(actionsName: actionsName);
}
