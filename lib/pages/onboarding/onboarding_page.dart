import 'package:doctor_queue/pages/login/login_page.dart';
import 'package:doctor_queue/views/button_widget.dart';
import 'package:doctor_queue/views/indicator.dart';
import 'package:doctor_queue/views/onboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  static const String id = "/onboarding_page";
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageControllerOne = PageController(initialPage: 0, viewportFraction: 1.0);
  PageController pageControllerTwo = PageController(initialPage: 0, viewportFraction: 1.0);
  int currentIndex = 0;

  void onboard() {
      if(pageControllerOne.page!.round() != 2) {
        pageControllerOne.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
        // pageControllerTwo.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      }
  }

  void selectedPage(int index) {
    if(pageControllerOne.page?.round() == null) {
      pageControllerOne.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      pageControllerTwo.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);

    } else if(pageControllerOne.page!.round() == 0) {
      if(pageControllerTwo.page!.round() == 1) {
        pageControllerTwo.previousPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      }
      if(pageControllerTwo.page!.round() == 2) {
        pageControllerTwo.previousPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
        pageControllerTwo.previousPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      }
    } else if(pageControllerOne.page!.round() == 1) {
      if(pageControllerTwo.page!.round() == 0) {
        pageControllerTwo.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      }
      if(pageControllerTwo.page!.round() == 2) {
        pageControllerTwo.previousPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      }
    } else if(pageControllerOne.page!.round() == 2) {
      if(pageControllerTwo.page!.round() == 0) {
        pageControllerTwo.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
        pageControllerTwo.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      }
      if(pageControllerTwo.page!.round() == 1) {
        pageControllerTwo.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      }
    }
  }

  void callToLoginPage() {
    Navigator.pushReplacementNamed(context, LoginPage.id);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        controller: pageControllerOne,
        onPageChanged: selectedPage,
        children: [
          imageBuild(context, "assets/images/im_onboard.png"),

          imageBuild(context, "assets/images/im_onboard1.png"),

          imageBuild(context, "assets/images/im_onboard2.png"),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 320.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35.r), topRight: Radius.circular(35.r)),
          color: Colors.white,
        ),
        child: Stack(
          children: [

            Positioned(
              top: 5.h,
              right: double.infinity / 2 - 18.w,
              child: Container(
                height: 3.h,
                width: 36.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.5.r),
                  color: const Color.fromRGBO(234, 234, 234, 1),
                ),
              ),
            ),

            PageView(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              controller: pageControllerTwo,
              onPageChanged: selectedPage,
              children: [
                buildStack(context, "Thousands of doctors",
                  "You can easily contact with a thousands of doctors and contact for your needs.",
                ),

                buildStack(context, "Chat with doctors",
                  "Book appointment with doctor. Chat with doctor via appointment letter and get consultation. ",
                ),

                buildStack(context, "Live talk with doctor",
                  "Easily connect with doctor, start voice and video call for your better treatment & prescription.",
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                DotsIndicator(controller: pageControllerOne, itemCount: 3, onPageSelected: (int page) {
                  pageControllerOne.jumpToPage(page);
                }),

                SizedBox(
                  height: 20.h,
                ),

                TextButton(
                    onPressed: onboard,
                    style: TextButton.styleFrom(padding: EdgeInsets.zero, primary: Colors.white),
                    child: Text("Skip", style: TextStyle(fontSize: 17.sp, fontFamily: "Poppins", color: const Color.fromRGBO(41, 114, 254, 1), fontWeight: FontWeight.w400),)
                ),

                SizedBox(
                  height: 10.h,
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: materialButton(callToLoginPage, context, "Next", 25.0, "Poppins", const Color.fromRGBO(255, 255, 255, 1), const Color.fromRGBO(41, 114, 254, 1)),
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}
