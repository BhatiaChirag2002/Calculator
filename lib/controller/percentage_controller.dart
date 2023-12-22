import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PercentageController extends GetxController {
  final totalMarksController = TextEditingController().obs;
  final scoredMarksController = TextEditingController().obs;
  var percentage = 0.0.obs;
  var cgpa = 0.0.obs;

  void calculateButton() {
    double totalMarks = double.tryParse(totalMarksController.value.text) ?? 0.0;
    double scoredMarks =
        double.tryParse(scoredMarksController.value.text) ?? 0.0;
    percentage.value = (scoredMarks / totalMarks) * 100;
    cgpa.value = (percentage.value / 100) * 10;
  }
}
