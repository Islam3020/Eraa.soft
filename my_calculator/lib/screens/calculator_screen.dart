import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controller/calc_controller.dart';
import '../widgets/calculator_button.dart';


class CalculatorUI extends StatelessWidget {
  final CalculatorController controller = Get.put(CalculatorController());

   CalculatorUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Obx(
                      () => Text(
                    controller.input.value,
                    style: const TextStyle(fontSize: 28, color: Colors.grey),
                  ),
                ),
                Obx(
                      () => Text(
                    controller.result.value,
                    style: const TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  CalculatorButton(
                    label: "C",
                    color: Colors.grey.shade800,
                    onTap: () => controller.buttonPressed("C"),
                  ),
                  CalculatorButton(
                    label: "+/-",
                    color: Colors.grey.shade800,
                    onTap: () {},
                  ),
                  CalculatorButton(
                    label: "%",
                    color: Colors.grey.shade800,
                    onTap: () => controller.buttonPressed("%"),
                  ),
                  CalculatorButton(
                    label: "÷",
                    color: Colors.blue,
                    onTap: () => controller.buttonPressed("÷"),
                  ),
                  CalculatorButton(
                    label: "7",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("7"),
                  ),
                  CalculatorButton(
                    label: "8",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("8"),
                  ),
                  CalculatorButton(
                    label: "9",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("9"),
                  ),
                  CalculatorButton(
                    label: "×",
                    color: Colors.blue,
                    onTap: () => controller.buttonPressed("×"),
                  ),
                  CalculatorButton(
                    label: "4",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("4"),
                  ),
                  CalculatorButton(
                    label: "5",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("5"),
                  ),
                  CalculatorButton(
                    label: "6",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("6"),
                  ),
                  CalculatorButton(
                    label: "-",
                    color: Colors.blue,
                    onTap: () => controller.buttonPressed("-"),
                  ),
                  CalculatorButton(
                    label: "1",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("1"),
                  ),
                  CalculatorButton(
                    label: "2",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("2"),
                  ),
                  CalculatorButton(
                    label: "3",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("3"),
                  ),
                  CalculatorButton(
                    label: "+",
                    color: Colors.blue,
                    onTap: () => controller.buttonPressed("+"),
                  ),
                  CalculatorButton(
                    label: ".",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("."),
                  ),
                  CalculatorButton(
                    label: "0",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("0"),
                  ),
                  CalculatorButton(
                    label: "⌫",
                    color: Colors.grey.shade900,
                    onTap: () => controller.buttonPressed("⌫"),
                  ),
                  CalculatorButton(
                    label: "=",
                    color: Colors.blue,
                    onTap: () => controller.buttonPressed("="),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

