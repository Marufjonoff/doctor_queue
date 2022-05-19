import 'package:doctor_queue/pages/language/language_page.dart';
import 'package:doctor_queue/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, widget) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DoctorQ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashPage(),
        routes: {
          // skdnlsdlas;a
          LanguagePage.id: (context) => const LanguagePage(),
        },
      ),
    );
  }
}
