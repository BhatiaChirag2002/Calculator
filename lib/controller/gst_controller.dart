import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GstController extends GetxController {
  final amountController = TextEditingController().obs;
  var gstAmount = 0.0.obs;
  var cGSTsGSTPrice = 0.0.obs;
  var finalPrice = 0.0.obs;

  void numbersButtonPress(String number) {
    if (number == 'AC') {
      amountController.value.text = '';
    } else if (number == '<') {
      amountController.value.text = amountController.value.text
          .substring(0, amountController.value.text.length - 1);
    } else {
      amountController.value.text += number;
    }
  }

  void percentageButtonPress(int percentage) {
    double amount = double.tryParse(amountController.value.text) ?? 0.0;

    gstAmount.value = (amount * percentage) / 100;
    cGSTsGSTPrice.value = gstAmount.value / 2;
    finalPrice.value = amount + gstAmount.value;
  }
}
