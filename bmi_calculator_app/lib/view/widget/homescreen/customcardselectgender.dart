import 'package:bmi/core/constant/appcolor.dart';
import 'package:bmi/core/shared/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardSelectGender extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color color;
  const CustomCardSelectGender({
    Key? key,
    required this.text,
    this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: AppColor.white,
            size: 80.w,
          ),
          CustomText(
            text: text,
            fontWeight: FontWeight.w600,
            fontSize: 21.sp,
          )
        ],
      ),
    );
  }
}
