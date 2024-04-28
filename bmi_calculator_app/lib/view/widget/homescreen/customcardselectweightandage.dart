import 'package:bmi/core/constant/appcolor.dart';
import 'package:bmi/core/shared/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardSelectWeightAndAge extends StatelessWidget {
  final String text;
  final int value;
  final void Function()? onTapMiuns;
  final void Function()? onTapAdd;

  const CustomCardSelectWeightAndAge(
      {super.key,
      required this.text,
      required this.value,
      this.onTapMiuns,
      this.onTapAdd});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColor.secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(
            text: text,
            fontWeight: FontWeight.w600,
            fontSize: 21.sp,
          ),
          CustomText(
            text: "$value",
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
            color: AppColor.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: onTapMiuns,
                child: CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  child: Icon(
                    Icons.remove,
                    color: AppColor.white,
                    size: 20.w,
                  ),
                ),
              ),
              InkWell(
                onTap: onTapAdd,
                child: CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  child: Icon(
                    Icons.add,
                    color: AppColor.white,
                    size: 20.w,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
