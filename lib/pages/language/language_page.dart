import 'package:doctor_queue/anime/anime.dart';
import 'package:doctor_queue/pages/onboarding/onboarding_page.dart';
import 'package:doctor_queue/views/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  static const String id = "/language_page";
  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  
  void languageSelect() {
    Navigator.pushReplacementNamed(context, OnBoardingPage.id);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: 200.h,
            width: 200.w,
            fit: BoxFit.cover,
            image: const AssetImage('assets/images/im_logo.png'),
          ),

          SizedBox(
            height: 50.h,
          ),

          FadeAnimation(materialButton(languageSelect, context, "Uzbek", 7, "Poppins", const Color.fromRGBO(255, 255, 255, 1), const Color.fromRGBO(41, 114, 254, 1)), 1.2),

          SizedBox(
            height: 10.h,
          ),

          FadeAnimation(materialButton(languageSelect, context, "Русский", 7, "Poppins", const Color.fromRGBO(255, 255, 255, 1), const Color.fromRGBO(41, 114, 254, 1)), 1.4),

          SizedBox(
            height: 10.h,
          ),

          FadeAnimation(materialButton(languageSelect, context, "English", 7, "Poppins", const Color.fromRGBO(255, 255, 255, 1), const Color.fromRGBO(41, 114, 254, 1)), 1.6),
        ],
      ),
    );
  }
}

