import 'package:bmi/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  int selectedGender = 0;
  RxDouble height = 170.0.obs;
  int weight = 55;
  int age = 18;
  String result = "";

  onTapCardSelectGender(int index) {
    selectedGender = index;
    update();
  }

  onTapWeightAdd() {
    weight = weight + 1;
    update();
  }

  onTapWeightMinus() {
    weight = weight - 1;
    update();
  }

  onTapAgeAdd() {
    age = age + 1;
    update();
  }

  onTapAgeMinus() {
    if (age == 1) {
      print("===========================================================");
      Get.defaultDialog(
          title: "Error", content: const Text("The Age Can't be Less Than 1"));
      return;
    }
    age = age - 1;
    update();
  }

  calculateBMI() {
    double bmi = weight / ((height / 100) * (height / 100));
    if (weight <= 3) {
      return Get.defaultDialog(
          title: "Error", content: const Text("Please Enter Valid Value"));
    }
    if (bmi < 18.5) {
      result = "Underweight";
    } else if (bmi >= 18.5 && bmi < 25.0) {
      result = "Normal weight";
    } else if (bmi >= 25.0 && bmi < 30.0) {
      result = "Over weight";
    } else {
      result = "Obese";
    }
    print("==========================================================");
    print("============================BMI==============================$bmi");
    print("==========================================================");
    print(
        "============================Result==============================$result");
    goToResult(bmi);
  }

  goToResult(double resultValue) {
    Get.toNamed(AppRoute.result, arguments: {
      "result": result,
      "selectedGender": selectedGender,
      "resultValue": resultValue,
      "age": age,
      "weight": weight
    });
  }
}
