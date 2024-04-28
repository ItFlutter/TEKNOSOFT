import 'package:bmi/core/constant/appcolor.dart';
import 'package:bmi/core/shared/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowResult extends StatelessWidget {
  final String text;
  final String result;
  const CustomRowResult({Key? key, required this.text, required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: "$text:",
          color: AppColor.white,
          fontWeight: FontWeight.w700,
          fontSize: 40.sp,
        ),
        CustomText(
          text: result,
          color: AppColor.white,
          fontWeight: FontWeight.w700,
          fontSize: 40.sp,
        ),
      ],
    );
  }
}
