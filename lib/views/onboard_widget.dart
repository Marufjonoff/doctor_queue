import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildStack(BuildContext context, String title, String body,) {
  return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),

        Text(title, style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600, fontFamily: "Poppins"),),

        SizedBox(
          height: 15.h,
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal:15.w),
          child: Text(body,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
}

Widget imageBuild(BuildContext context, String image) {
  return Image(
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    image: AssetImage(image),
  );
}
