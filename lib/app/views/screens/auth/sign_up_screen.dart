// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/app/util/util.dart';
import 'package:project2/app/model/auth/signup.dart';
import 'package:project2/app/views/base/button_event_widget.dart';
import 'package:project2/app/views/base/dialog_verify_account_widget.dart';
import 'package:project2/app/views/base/event_more_auth_widget.dart';
import 'package:project2/app/views/base/text_edit_widget.dart';
import 'package:project2/app/views/base/title_page_widget.dart';
import 'package:project2/app/views/screens/auth/widget/button_check.dart';
import 'package:provider/provider.dart';

import '../../../util/color.dart';
import '../../../util/constant.dart';

class SignProvider extends ChangeNotifier {
  bool go = false;

  void signin(signData) {
    CustomActionSignIn(actionsName: ActionsName.signIn, siignData: signData)
        .signIn();
    notifyListeners();
  }

  void register(signData) {
    CustomActionRegister(actionsName: ActionsName.register, signData: signData)
        .register();
    notifyListeners();
  }

  void back({required List<SignPage> signPage}) {
    notifyListeners();
  }
}

class SignUpFoodScreen extends HookWidget {
  const SignUpFoodScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller1 = useTextEditingController();
    final controller2 = useTextEditingController();
    final controller3 = useTextEditingController();
    final controller4 = useTextEditingController();
    final ctrd1 = useTextEditingController();
    final ctrd2 = useTextEditingController();
    final ctrd3 = useTextEditingController();
    final ctrd4 = useTextEditingController();
    final vb1 = useState(0);
    final vb2 = useState(0);
    final vb3 = useState(0);
    final vb4 = useState(0);
    final vd1 = useState(0);
    final vd2 = useState(0);
    final vd3 = useState(0);
    final vd4 = useState(0);
    final pch = useState(SignPage.sign);
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
      controller4.addListener(() {
        if (controller4.text.isNotEmpty) {
          vb4.value = 2;
        } else if (controller4.text.isEmpty) {
          vb4.value = 0;
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
    }, [controller1, controller2, controller3, controller4]);
    final sa = SignActions(
        context: context,
        controller1: controller1,
        controller2: controller2,
        controller3: controller3,
        vl1: vb1.value.toDouble(),
        vl2: vb2.value.toDouble(),
        vl3: vb3.value.toDouble(),
        name_btn: "Register",
        ev: () {
          context.read<SignProvider>().register(SignData(
              context: context,
              full_name: controller1.text,
              email: controller2.text,
              password: controller3.text));
          Timer(const Duration(seconds: 1), () {
            pch.value = SignPage.pch;
          });
        },
        sign: () {
          context.read<SignProvider>().signin(SignData(
              context: context, full_name: "", email: "", password: ""));
        });

    final slast = SignLast(
        controller: controller4,
        v: vb4.value.toDouble(),
        action: () {
          pch.value = SignPage.dialog;
        });
    final sdu = SignDialogUI(
        controller1: ctrd1,
        controller2: ctrd2,
        controller3: ctrd3,
        controller4: ctrd4,
        verfiy: () {},
        again: () {},
        vc1: vd1.value.toDouble(),
        vc2: vd2.value.toDouble(),
        vc3: vd3.value.toDouble(),
        vc4: vd4.value.toDouble());
    bev() {
      if (pch.value.name.contains(SIGN)) {
        Navigator.pop(context);
      } else if (pch.value.name.contains(PCH)) {
        pch.value = SignPage.sign;
      } else if (pch.value.name.contains(DIALOG)) {
        pch.value = SignPage.pch;
      }
    }

    final ld = LanchData(data: [
      $signfirst(signActions: sa),
      $signlast(sl: slast),
      $dialogVerify(signDialogUI: sdu),
    ], v: pch.value);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Util.backPage(vc: bev),
          $launch(launchData: ld),
          // $signlast()
        ],
      ),
    );
  }

  Widget $launch({LanchData? launchData}) {
    final data = launchData!.data;
    switch (launchData.v) {
      case SignPage.pch:
        return data.elementAt(1);
      case SignPage.dialog:
        return data.elementAt(2);
      case SignPage.sign:
        return data.elementAt(0);
      default:
        return data.elementAt(0);
    }
  }

  Widget $dialogVerify({SignDialogUI? signDialogUI}) {
    final c1 = Util.showBorder(v: signDialogUI!.vc1);
    final c2 = Util.showBorder(v: signDialogUI.vc2);
    final c3 = Util.showBorder(v: signDialogUI.vc3);
    final c4 = Util.showBorder(v: signDialogUI.vc4);
    return DialogVerifyAccountWidget(
      c1: c1,
      c2: c2,
      c3: c3,
      c4: c4,
      controllerOne: signDialogUI.controller1,
      controllerTwo: signDialogUI.controller2,
      controllerTree: signDialogUI.controller3,
      controllerFoure: signDialogUI.controller4,
      evntVerify: signDialogUI.verfiy,
      eventAgain: signDialogUI.again,
    );
  }

  Widget $signfirst({SignActions? signActions}) {
    final se1 =
        SignEdit(controller: signActions!.controller1, v: signActions.vl1);
    final se2 =
        SignEdit(controller: signActions.controller2, v: signActions.vl2);
    final se3 =
        SignEdit(controller: signActions.controller3, v: signActions.vl3);
    final ns = NewSign(context: signActions.context, signin: signActions.sign);
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitlePageWidget(
                  text: "Create Your",
                ),
                $tfname(
                  se: se1,
                ),
                $tfemail(
                  se: se2,
                ),
                $tfpass(
                  se: se3,
                ),
                button_check(authUiData: signActions),
                $newsign(
                  newSign: ns,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget $signlast({SignLast? sl}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Enter Your Phone",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )),
          TextEditingWidget(
            controller: sl!.controller,
            hintText: "Phone Number",
            prefixIcon: Icons.call,
            subfixIcon: null,
            v: sl.v,
          ),
          SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: Util.buttonStyle(bgc: orange),
                  onPressed: sl.action,
                  child: const Text("VERFIY"))),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: Util.buttonStyle(bgc: reds),
              onPressed: () {},
              child: const Text(
                "LATER",
                style: TextStyle(color: orange),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget $newsign({NewSign? newSign}) {
    return EventMoreAuthWidget(
      body: "Already Have An Account?",
      text: "Sign In",
      event: newSign!.signin,
      context: () {
        return newSign.context;
      },
    );
  }

  Widget $btreg({void Function()? btev}) {
    return ButtonElevatedWidget(
      text: "Register",
      event: btev,
    );
  }

  Widget $tfname({SignEdit? se}) {
    return TextEditingWidget(
      controller: se!.controller,
      hintText: "Full Name",
      prefixIcon: FontAwesomeIcons.user,
      subfixIcon: null,
      v: se.v,
    );
  }

  Widget $tfemail({SignEdit? se}) {
    return TextEditingWidget(
      controller: se!.controller,
      prefixIcon: Icons.email_outlined,
      hintText: "Enter Your Email",
      subfixIcon: null,
      v: se.v,
    );
  }

  Widget $tfpass({SignEdit? se}) {
    return TextEditingWidget(
      controller: se!.controller,
      hintText: "Password",
      prefixIcon: Icons.lock_outline,
      subfixIcon: Icons.remove_red_eye_outlined,
      v: se.v,
    );
  }
}
