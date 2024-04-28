import 'package:bmi/core/constant/appcolor.dart';
import 'package:bmi/core/shared/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomBottomNavigationBar(
      {Key? key,
      this.onPressed,
      required this.text,
      this.fontSize,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 45.h,
      onPressed: onPressed,
      color: AppColor.primaryColor,
      child: CustomText(text: text, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
