import 'package:bmi/core/constant/routes.dart';
import 'package:bmi/view/screen/result.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRoute.result, page: () => const Result())
];
