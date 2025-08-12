import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});
  final FootballController footballController = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Football Players")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballController.players.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Get.toNamed(AppRoutes.footballEdit, arguments: index);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    footballController.players[index].profileImage,
                  ),
                ),
                title: Text(
                  footballController.players[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '${footballController.players[index].position} • #${footballController.players[index].jerseyNumber}',
                ),
                trailing: Icon(Icons.edit),
              );
            },
          ),
        ),
      ),
    );
  }
}
