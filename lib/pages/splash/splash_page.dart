import 'package:doctor_queue/pages/language/language_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageToPage();
  }

  void pageToPage() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) => {
      Navigator.pushReplacementNamed(context, LanguagePage.id),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 99, 246, 1),
      body: Center(
        child: Image(
          height: 200.h,
          width: 200.w,
          fit: BoxFit.cover,
          image: const AssetImage('assets/images/im_logo.png'),
        ),
      ),
    );
  }
}
