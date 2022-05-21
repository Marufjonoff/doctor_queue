import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget materialButton(void Function() onPressed, BuildContext context, String text, double borderRadius, String fontFamily, Color colorText, Color buttonColor) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: MaterialButton(
      elevation: 0,
      height: 50,
      minWidth: MediaQuery.of(context).size.width,
      onPressed: onPressed,
      color: buttonColor,
      child: Text(text, style: TextStyle(fontSize: 17.sp, fontFamily: fontFamily, color: colorText, fontWeight: FontWeight.w400),),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius.r),
        borderSide: const BorderSide(
          width: 1.5,
          color: Color.fromRGBO(41, 114, 254, 1),
        )
      ),
    ),
  );
}