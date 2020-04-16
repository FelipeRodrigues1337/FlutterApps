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
      ),
    );
    listHero.add(
      HeroModel(
        image: "assets/kacchan.jpg",
        name: "Katsuki Bakugo",
        nickname: "Kacchan",
      ),
    );
  }
}
