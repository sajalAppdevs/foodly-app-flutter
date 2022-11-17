// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/cupertino.dart';

class LanchData {
  late List<Widget> data;
  late LoginPage v;

  LanchData({required this.data, required this.v});
}

enum LoginPage {
  forget,
  verify,
  reset,
  login,
}

class LoginUiData {
  late BuildContext context;
  late TextEditingController controller1;
  late TextEditingController controller2;
  late int v1;
  late int v2;
  late String name_btn;
  late void Function() sign;
  late void Function() forget;
  late void Function() ev;

  LoginUiData({
    required this.context,
    required this.controller1,
    required this.controller2,
    required this.v1,
    required this.v2,
    required this.name_btn,
    required this.sign,
    required this.forget,
    required this.ev,
  });
}

class LoginForgetUi {
  late BuildContext context;
  late void Function()? cnemail;
  late void Function()? cnpass;
  late void Function()? verify;
  late bool ve;
  late bool vp;

  LoginForgetUi({
    required this.context,
    required this.cnemail,
    required this.cnpass,
    required this.verify,
    required this.ve,
    required this.vp,
  });
}

class Ftbn {
  late void Function()? cn;
  late bool v;
  Ftbn({
    required this.cn,
    required this.v,
  });
}

class LoginDialogUI {
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

  LoginDialogUI({
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

class NewLogin {
  late BuildContext context;
  late void Function() signin;

  NewLogin({
    required this.context,
    required this.signin,
  });
}

class LoginReset {
  late TextEditingController controller1;
  late TextEditingController controller2;
  late void Function() reset;
  late double v1;
  late double v2;

  LoginReset(
      {required this.controller1,
      required this.controller2,
      required this.reset,
      required this.v1,
      required this.v2});
}
