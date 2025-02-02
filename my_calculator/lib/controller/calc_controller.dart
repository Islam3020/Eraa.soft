
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';



class CalculatorController extends GetxController {
  var input = ''.obs;
  var result = ''.obs;

  void buttonPressed(String value) {
    if (value == "C") {
      clear();
    } else if (value == "=") {
      calculate();
    } else if (value == "⌫") {
      backspace();
    } else {
      input.value += value;
    }
  }

  void clear() {
    input.value = '';
    result.value = '';
  }

  void backspace() {
    if (input.isNotEmpty) {
      input.value = input.value.substring(0, input.value.length - 1);
    }
  }




  void calculate() {
    try {
      String expression = input.value.replaceAll('×', '*').replaceAll('÷', '/');
      Parser parser = Parser();
      Expression exp = parser.parse(expression);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      result.value = eval.toStringAsFixed(2);
    } catch (e) {
      result.value = "Error";
    }
  }
}
