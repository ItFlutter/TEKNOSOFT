import 'package:bmi/controller/resultcontroller.dart';
import 'package:bmi/core/constant/appcolor.dart';
import 'package:bmi/view/widget/result/customrowresult.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResultController controller = Get.put(ResultController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomRowResult(text: "Gender", result: controller.selectedGender),
          CustomRowResult(
              text: "Result",
              result: controller.resultValue.toStringAsFixed(1)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Healthiness:",
                    style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 40.sp,
                    ),
                    children: [
                      TextSpan(
                        text: controller.result,
                        style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 40.sp,
                        ),
                      ),
                    ])),
          ),
          // CustomRowResult(text: "Healthiness", result: controller.result),
          CustomRowResult(text: "Age", result: "${controller.age}"),
        ],
      ),
    );
  }
}
