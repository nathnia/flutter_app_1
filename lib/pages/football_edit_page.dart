import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/football_edit_controller.dart';
import 'package:flutter_application_1/widgets/widget_textfield.dart';
import 'package:get/get.dart';
import '../controllers/football_controller.dart';

class FootballEditPage extends StatelessWidget {
  FootballEditPage({super.key});

  final footballController = Get.find<FootballController>();

  final FootballEditController footballEditController = Get.put(
    FootballEditController(),
  );

  @override
  Widget build(BuildContext context) {
    final int index = Get.arguments;

    final player = footballController.players[index];

    footballEditController.nameController.text = player.name;
    footballEditController.positionController.text = player.position;
    footballEditController.jerseyNumberController.text = player.jerseyNumber.toString();

    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(labelText: "Name", textEditingController: footballEditController.nameController, obscureText: false),
            const SizedBox(height: 20),
            CustomTextField(labelText: "Position", textEditingController: footballEditController.positionController, obscureText: false),
            const SizedBox(height: 20),
            CustomTextField(labelText: "Jersey Number", textEditingController: footballEditController.jerseyNumberController, obscureText: false),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                footballController.players[index].name =
                    footballEditController.nameController.text;
                footballController.players[index].position =
                    footballEditController.positionController.text;
                footballController.players[index].jerseyNumber =
                    int.tryParse(
                      footballEditController.jerseyNumberController.text,
                    ) ??
                    player.jerseyNumber;

                footballController.players.refresh();

                Get.back();
              },
              child: Text("Save & Back"),
            ),
          ],
        ),
      ),
    );
  }
}
