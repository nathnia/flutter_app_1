import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/calculator_controller.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/widgets/widget_button.dart';
import 'package:flutter_application_1/widgets/widget_textfield.dart';
import 'package:get/get.dart';

class CalPage extends StatelessWidget {
  CalPage({super.key});

  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator Page")),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: CustomTextField(
                labelText: "input angka 1",
                textEditingController: calculatorController.txtAngka1,
                obscureText: false,
              ),
            ),
            
            Container(
              margin: EdgeInsets.all(10),
              child: CustomTextField(
                labelText: "input angka 2",
                textEditingController: calculatorController.txtAngka2,
                obscureText: false,
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "+",
                    textColor: Colors.deepPurpleAccent,
                    onPressed: () {
                      calculatorController.tambah();
                    },
                  ),
                  CustomButton(
                    text: "-",
                    textColor: Colors.deepPurpleAccent,
                    onPressed: () {
                      calculatorController.kurang();
                    },
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "*",
                    textColor: Colors.deepPurpleAccent,
                    onPressed: () {
                      calculatorController.kali();
                    },
                  ),
                  CustomButton(
                    text: "/",
                    textColor: Colors.deepPurpleAccent,
                    onPressed: () {
                      calculatorController.bagi();
                    },
                  ),
                ],
              ),
            ),

            Obx(() => Text("Hasil " + calculatorController.hasil.value)),

            CustomButton(
              text: "Clear",
              textColor: Colors.deepPurpleAccent,
              onPressed: () {
                calculatorController.hapus();
              },
            ),

            // CustomButton(text: "Move to Football Players", textColor: Colors.deepPurpleAccent, onPressed: () {
            //   Get.toNamed(AppRoutes.footballplayers);
            // })
          ],
        ),
      ),
    );
  }
}
