import 'package:doctor_queue/pages/auth/sign_in/sign_in_page.dart';
import 'package:doctor_queue/pages/auth/sign_up/sign_up_page.dart';
import 'package:doctor_queue/pages/language/language_page.dart';
import 'package:doctor_queue/pages/login/login_page.dart';
import 'package:doctor_queue/pages/onboarding/onboarding_page.dart';
import 'package:doctor_queue/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //commit

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 672),
      builder: (context, widget) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DoctorQ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashPage(),
        routes: {
          LanguagePage.id: (context) => const LanguagePage(),
          OnBoardingPage.id: (context) => const OnBoardingPage(),
          LoginPage.id: (context) => const LoginPage(),
          SignInPage.id: (context) => const SignInPage(),
          SignUpPage.id: (context) => const SignUpPage(),

        },
      ),
    );
  }
}
