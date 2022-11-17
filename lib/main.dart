import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/app/theme/light_theme.dart';
import 'package:project2/app/views/screens/auth/sign_in_screen.dart';
import 'package:project2/app/views/screens/auth/sign_up_screen.dart';
import 'package:project2/app/views/screens/home/home_screen.dart';
import 'package:project2/app/views/screens/start/start_screen_one.dart';
import 'package:provider/provider.dart';
import 'app/views/screens/start/app_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ChangeNotifierProvider(
      create: (_) => SignProvider(),
      child: MaterialApp(
        theme: dark,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (_) => const StartScreenOne(),
          '/sf': (_) => const SignUpFoodScreen(),
          '/lf': (_) => const LoginFood(),
          '/st': (_) => const AppInfoScreen(),
          'df': (_) => const IndexFood()
        },
      ),
    );
  }
}
