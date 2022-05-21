import 'package:doctor_queue/pages/auth/sign_in/sign_in_page.dart';
import 'package:doctor_queue/pages/auth/sign_up/sign_up_page.dart';
import 'package:doctor_queue/views/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String id = "/login_page";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void callSignUp() {
    Navigator.pushReplacementNamed(context, SignUpPage.id);
  }

  void callSignIn() {
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Image(
                height: 200.h,
                width: 200.w,
                fit: BoxFit.cover,
                image: const AssetImage('assets/images/im_logo.png'),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.h,
                ),

                Text("Welcome to DoctorQ!", style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600, fontFamily: "Poppins"),),

                SizedBox(
                  height: 50.h,
                ),

                materialButton(callSignUp, context, "Sign Up", 25.0, "Poppins", const Color.fromRGBO(255, 255, 255, 1), const Color.fromRGBO(41, 114, 254, 1)),

                SizedBox(
                  height: 10.h,
                ),

                materialButton(callSignUp, context, "Sign In", 25.0, "Poppins", const Color.fromRGBO(41, 114, 254, 1), const Color.fromRGBO(255, 255, 255, 1)),
              ],
            )
          ),
        ],
      ),
    );

  }
}
