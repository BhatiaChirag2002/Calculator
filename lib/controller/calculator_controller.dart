import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var input = ''.obs;
  var output = ''.obs;
  var operator = ''.obs;

  void onButtonPress(value) {
    if (value == 'AC') {
      input.value = '';
      output.value = '';
    } else if (value == '<') {
      if (input.value.isNotEmpty) {
        input.value = input.value.substring(0, input.value.length - 1);
      }
    } else if (value == '=') {
      if (input.value.isNotEmpty) {
        var userInput = input.value;
        userInput = userInput.replaceAll('×', '*');
        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalValue = expression.evaluate(EvaluationType.REAL, cm);
        output.value = finalValue.toString();
        if (output.value.endsWith('.0')) {
          output.value = output.value.substring(0, output.value.length - 2);
        }
      }
    } else {
      input.value = input.value + value;
    }
  }
}
