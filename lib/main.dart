import 'package:flutter/material.dart';
import 'package:login_demo_flutter/constant/constant.dart';
import 'package:login_demo_flutter/screens/login_screen.dart';
import 'package:login_demo_flutter/screens/sign_up_screen.dart';
import 'package:login_demo_flutter/screens/splash_screen.dart';

main() {
  runApp(MaterialApp(
    title: 'FlutterLogindemo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.black,
        primaryColorDark: Colors.black,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.black)),
    home: const SplashScreen(),
    routes: <String, WidgetBuilder>{
      logInScreen: (BuildContext context) => const LogInScreen(),
      signUpScreen: (BuildContext context) => const SignUpScreen(),
      animatedScreen: (BuildContext context) => const SplashScreen()
    },
  ));
}
