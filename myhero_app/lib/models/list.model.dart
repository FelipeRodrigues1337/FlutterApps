import 'package:flutter/material.dart';
import 'package:myheroapp/models/hero.model.dart';

class ListModel {
  List<HeroModel> listHero = [];

  ListModel() {
    listHero.add(
      HeroModel(
        image: "assets/mydo.png",
        name: "Izuku Midoriya",
        nickname: "Deku",
        power: "One For All",
        gif: "assets/deku.gif",
      ),
    );
    listHero.add(
      HeroModel(
        image: "assets/kacchan.jpg",
        name: "Katsuki Bakugo",
        nickname: "Kacchan",
        power: "Explosão",
        gif: "",
      ),
    );
    listHero.add(
      HeroModel(
        image: "assets/Shoto.png",
        name: "Shoto Todoroki",
        nickname: "Shoto",
        power: "Half-Cold Half-Hot",
        gif: "",
      ),
    );
    listHero.add(
      HeroModel(
        image: "assets/lida.jpg",
        name: "Tenya Iida",
        nickname: "Ingenium",
        power: "Engine",
        gif: "",
      ),
    );
  }
}
