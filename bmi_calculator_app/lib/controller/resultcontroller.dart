import 'package:get/get.dart';

class ResultController extends GetxController {
  late String selectedGender;
  late double resultValue;
  late int weight;
  late int age;
  late String result;
  @override
  void onInit() {
    selectedGender = Get.arguments['selectedGender'] == 0 ? "Male" : "Female";
    resultValue = Get.arguments['resultValue'];
    weight = Get.arguments['weight'];
    age = Get.arguments['age'];
    result = Get.arguments['result'];

    // TODO: implement onInit
    super.onInit();
  }
}
