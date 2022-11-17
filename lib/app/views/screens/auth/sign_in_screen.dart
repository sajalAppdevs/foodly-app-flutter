// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:project2/app/util/util.dart';
import 'package:project2/app/views/base/dialog_verify_account_widget.dart';
import 'package:project2/app/views/base/event_more_auth_widget.dart';
import 'package:project2/app/views/base/text_edit_widget.dart';
import 'package:project2/app/views/base/title_page_widget.dart';
import 'package:project2/app/views/screens/auth/forgot_pass_screen.dart';
import 'package:project2/app/views/screens/auth/reset_pass_screen.dart';
import 'package:project2/app/views/screens/auth/widget/button_check.dart';
import 'package:project2/app/views/screens/home/home_screen.dart';
import '../../../util/constant.dart';
import '../../../model/auth/login.dart' as login;
import '../../../model/auth/signup.dart';

class LoginFood extends HookWidget {
  const LoginFood({super.key});

  @override
  Widget build(BuildContext context) {
    final controller1 = useTextEditingController();
    final controller2 = useTextEditingController();
    final controller3 = useTextEditingController();
    final ctrd1 = useTextEditingController();
    final ctrd2 = useTextEditingController();
    final ctrd3 = useTextEditingController();
    final ctrd4 = useTextEditingController();
    final ctReset1 = useTextEditingController();
    final ctReset2 = useTextEditingController();
    final vb1 = useState(0);
    final vb2 = useState(0);
    final vb3 = useState(0);
    final vd1 = useState(0);
    final vd2 = useState(0);
    final vd3 = useState(0);
    final vd4 = useState(0);
    final vReset1 = useState(0);
    final vReset2 = useState(0);
    final vch = useState(login.LoginPage.login);
    final cnt1 = useState(false);
    final cnt2 = useState(false);
    useEffect(() {
      controller1.addListener(() {
        if (controller1.text.isNotEmpty) {
          vb1.value = 2;
        } else if (controller1.text.isEmpty) {
          vb1.value = 0;
        }
      });
      controller2.addListener(() {
        if (controller2.text.isNotEmpty) {
          vb2.value = 2;
        } else if (controller2.text.isEmpty) {
          vb2.value = 0;
        }
      });
      controller3.addListener(() {
        if (controller3.text.isNotEmpty) {
          vb3.value = 2;
        } else if (controller3.text.isEmpty) {
          vb3.value = 0;
        }
      });
      ctrd1.addListener(() {
        if (ctrd1.text.isNotEmpty) {
          vd1.value = 2;
        } else if (ctrd1.text.isEmpty) {
          vd1.value = 0;
        }
      });
      ctrd2.addListener(() {
        if (ctrd2.text.isNotEmpty) {
          vd2.value = 2;
        } else if (ctrd2.text.isEmpty) {
          vd2.value = 0;
        }
      });
      ctrd3.addListener(() {
        if (ctrd3.text.isNotEmpty) {
          vd3.value = 2;
        } else if (ctrd3.text.isEmpty) {
          vd3.value = 0;
        }
      });
      ctrd4.addListener(() {
        if (ctrd4.text.isNotEmpty) {
          vd4.value = 2;
        } else if (ctrd4.text.isEmpty) {
          vd4.value = 0;
        }
      });
      return null;
    }, [
      controller1,
      controller2,
      controller3,
      ctrd1,
      ctrd2,
      ctrd3,
      ctrd4,
      ctReset1,
      ctReset2
    ]);
    final lfu = login.LoginForgetUi(
        context: context,
        cnemail: () {
          cnt1.value = true;
          cnt2.value = false;
        },
        cnpass: () {
          cnt2.value = true;
          cnt1.value = false;
        },
        verify: () {
          vch.value = login.LoginPage.verify;
        },
        ve: cnt1.value,
        vp: cnt2.value);
    final lud = login.LoginUiData(
        context: context,
        controller1: controller1,
        controller2: controller2,
        v1: vb1.value,
        v2: vb2.value,
        name_btn: "LOGIN",
        sign: () {},
        forget: () {
          vch.value = login.LoginPage.forget;
        },
        ev: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (_, __, ___) => IndexFood(),
                  transitionDuration: const Duration(seconds: 2),
                  transitionsBuilder: (_, a, __, c) => FadeTransition(
                        opacity: a,
                        child: c,
                      )));
        });
    final ldu = login.LoginDialogUI(
        controller1: ctrd1,
        controller2: ctrd2,
        controller3: ctrd3,
        controller4: ctrd4,
        verfiy: () {
          vch.value = login.LoginPage.reset;
        },
        again: () {},
        vc1: vd1.value.toDouble(),
        vc2: vd2.value.toDouble(),
        vc3: vd3.value.toDouble(),
        vc4: vd4.value.toDouble());
    final lr = login.LoginReset(
        controller1: ctReset1,
        controller2: ctReset2,
        reset: () {},
        v1: vReset1.value.toDouble(),
        v2: vReset2.value.toDouble());
    bev() {
      if (vch.value.name.contains(LOGIN)) {
        Navigator.pop(context);
      } else if (vch.value.name.contains(VERIFY)) {
        vch.value = login.LoginPage.forget;
      } else if (vch.value.name.contains(RESET)) {
        vch.value = login.LoginPage.verify;
      } else if (vch.value.name.contains(FORGET)) {
        vch.value = login.LoginPage.login;
      }
    }

    final ld = login.LanchData(data: [
      $loginfirst(loginUiData: lud),
      $forgetPass(loginForgetUi: lfu),
      $dialogVerify(loginDialogUI: ldu),
      $reset(loginReset: lr),
    ], v: vch.value);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Util.backPage(vc: bev),
            $launch(lanchData: ld),
          ],
        ),
      ),
    );
  }

  Widget $launch({login.LanchData? lanchData}) {
    final data = lanchData!.data;
    switch (lanchData.v) {
      case login.LoginPage.forget:
        return data.elementAt(1);
      case login.LoginPage.verify:
        return data.elementAt(2);
      case login.LoginPage.reset:
        return data.elementAt(3);
      case login.LoginPage.login:
        return data.elementAt(0);
      default:
        return data.elementAt(0);
    }
  }

  Widget $loginfirst({login.LoginUiData? loginUiData}) {
    final newLogin =
        login.NewLogin(context: loginUiData!.context, signin: loginUiData.sign);
    final signEmail = SignEdit(
        controller: loginUiData.controller1, v: loginUiData.v1.toDouble());
    final signPass = SignEdit(
        controller: loginUiData.controller2, v: loginUiData.v2.toDouble());
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitlePageWidget(text: "Login your"),
                $tfemail(se: signEmail),
                $tfpass(se: signPass),
                Transform.translate(
                    offset: const Offset(0, -10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: loginUiData.forget,
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(color: Colors.grey.shade500),
                          )),
                    )),
                button_check(authUiData: loginUiData),
                $newMoreActionlogin(newLogin: newLogin),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget $tfemail({SignEdit? se}) {
    return TextEditingWidget(
      controller: se!.controller,
      hintText: "Enter Your Email",
      prefixIcon: Icons.email_outlined,
      subfixIcon: null,
      v: se.v,
    );
  }

  Widget $tfpass({SignEdit? se}) {
    return TextEditingWidget(
      controller: se!.controller,
      hintText: "Password",
      prefixIcon: Icons.lock,
      subfixIcon: Icons.remove_red_eye_outlined,
      v: se.v,
    );
  }

  Widget $newMoreActionlogin({login.NewLogin? newLogin}) {
    return EventMoreAuthWidget(
      body: "Create New Account?",
      text: "Sign Up",
      context: () {
        return newLogin!.context;
      },
    );
  }

  Widget $forgetPass({login.LoginForgetUi? loginForgetUi}) {
    final ftbn1 = login.Ftbn(cn: loginForgetUi?.cnemail, v: loginForgetUi!.ve);
    final ftbn2 = login.Ftbn(cn: loginForgetUi.cnpass, v: loginForgetUi.vp);
    return ForgotPassScreen(
      ftbn1: ftbn1,
      ftbn2: ftbn2,
      context: () {
        return loginForgetUi.context;
      },
      event: loginForgetUi.verify,
    );
  }

  Widget $dialogVerify({login.LoginDialogUI? loginDialogUI}) {
    final c1 = Util.showBorder(v: loginDialogUI!.vc1);
    final c2 = Util.showBorder(v: loginDialogUI.vc2);
    final c3 = Util.showBorder(v: loginDialogUI.vc3);
    final c4 = Util.showBorder(v: loginDialogUI.vc4);
    return DialogVerifyAccountWidget(
      c1: c1,
      c2: c2,
      c3: c3,
      c4: c4,
      controllerOne: loginDialogUI.controller1,
      controllerTwo: loginDialogUI.controller2,
      controllerTree: loginDialogUI.controller3,
      controllerFoure: loginDialogUI.controller4,
      evntVerify: loginDialogUI.verfiy,
      eventAgain: loginDialogUI.again,
    );
  }

  Widget $reset({login.LoginReset? loginReset}) {
    final se1 = SignEdit(controller: loginReset!.controller1, v: loginReset.v1);
    final se2 = SignEdit(controller: loginReset.controller2, v: loginReset.v2);
    return ResetPassScreen(se1: se1, se2: se2);
  }
}
