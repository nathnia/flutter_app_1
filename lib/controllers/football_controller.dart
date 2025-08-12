import 'package:flutter_application_1/models/football_models.dart';
import 'package:get/get.dart';

class FootballController extends GetxController {
  var players = <Player>[
    Player(
      profileImage: "assets/player_a.png",
      name: "Player A",
      position: "Forward",
      jerseyNumber: 9,
    ),
    Player(
      profileImage: "assets/player_b.png",
      name: "Player B",
      position: "Midfielder",
      jerseyNumber: 8,
    ),
    Player(
      profileImage: "assets/player_c.png",
      name: "Player C",
      position: "Defender",
      jerseyNumber: 5,
    ),
    Player(
      profileImage: "assets/player_d.png",
      name: "Player D",
      position: "Goalkeeper",
      jerseyNumber: 1,
    ),
  ].obs;
}
