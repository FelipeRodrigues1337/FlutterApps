import 'package:flutter/material.dart';
import 'package:myheroapp/models/hero.model.dart';
import 'package:myheroapp/models/list.model.dart';
import 'package:myheroapp/widgets/hero.card.widget.dart';
import 'package:myheroapp/widgets/hero.item.widget.dart';

class Home extends StatelessWidget {
  List<HeroModel> heroList = [];
  var listModel = new ListModel();

  Home() {
    heroList = listModel.listHero;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 400,
              child: PageView.builder(
                itemCount: heroList.length,
                itemBuilder: (context, index){
                  final hero = heroList[index];

                  return  HeroCard(
                    image: hero.image,
                    name: hero.name,
                    nickname: hero.nickname,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
