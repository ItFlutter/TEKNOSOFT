import 'package:bmi/controller/homescreencontroller.dart';
import 'package:bmi/core/constant/appcolor.dart';
import 'package:bmi/core/shared/customtext.dart';
import 'package:bmi/view/widget/homescreen/custombottomnavigationbar.dart';
import 'package:bmi/view/widget/homescreen/customcardselectgender.dart';
import 'package:bmi/view/widget/homescreen/customcardselectweightandage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenController controller2 = Get.put(HomeScreenController());
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        text: "Calculate",
        fontSize: 23.sp,
        fontWeight: FontWeight.w600,
        onPressed: () {
          controller2.calculateBMI();
        },
      ),
      appBar: AppBar(
        title: const Text("Body Mass Index"),
      ),
      body: Padding(
          padding: EdgeInsets.all(15.w),
          child: GetBuilder<HomeScreenController>(
            builder: (controller) {
              return Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            controller.onTapCardSelectGender(0);
                          },
                          child: CustomCardSelectGender(
                            text: "Male",
                            icon: Icons.male,
                            color: controller.selectedGender == 0
                                ? AppColor.primaryColor
                                : AppColor.secondaryColor,
                          ),
                        )),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            controller.onTapCardSelectGender(1);
                          },
                          child: CustomCardSelectGender(
                            text: "Female",
                            icon: Icons.female,
                            color: controller.selectedGender == 1
                                ? AppColor.primaryColor
                                : AppColor.secondaryColor,
                          ),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                      flex: 4,
                      child: GetX<HomeScreenController>(
                        builder: (controller1) {
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: AppColor.secondaryColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: "Height",
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CustomText(
                                      text:
                                          controller1.height.toStringAsFixed(2),
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.white,
                                    ),
                                    CustomText(
                                      text: "CM",
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ],
                                ),
                                Slider(
                                    activeColor: AppColor.primaryColor,
                                    min: 50,
                                    max: 250,
                                    value: controller1.height.value,
                                    onChanged: (value) {
                                      controller1.height.value = value;
                                    }),
                              ],
                            ),
                          );
                        },
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                              child: CustomCardSelectWeightAndAge(
                            text: "Weight",
                            value: controller.weight,
                            onTapAdd: () {
                              controller.onTapWeightAdd();
                            },
                            onTapMiuns: () {
                              controller.onTapWeightMinus();
                            },
                          )),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                              child: CustomCardSelectWeightAndAge(
                            text: "Age",
                            value: controller.age,
                            onTapAdd: () {
                              controller.onTapAgeAdd();
                            },
                            onTapMiuns: () {
                              controller.onTapAgeMinus();
                            },
                          )),
                        ],
                      )),
                ],
              );
            },
          )),
    );
  }
}
