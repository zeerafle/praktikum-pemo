import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  increment() => counter++;
}

class SwitchController extends GetxController {
  var switchValue = false.obs;
}

class GetxTextController extends GetxController {
  var name = "".obs;
  final nameEditingController = TextEditingController();
}
