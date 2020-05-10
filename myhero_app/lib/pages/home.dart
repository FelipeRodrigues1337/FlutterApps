import 'package:flutter/material.dart';
import 'package:myheroapp/models/hero.model.dart';
import 'package:myheroapp/models/list.model.dart';
import 'package:myheroapp/widgets/hero.card.widget.dart';
import 'package:myheroapp/widgets/hero.item.widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HeroModel> heroList = [];
  var listModel = new ListModel();
  int _selectedIndex = 0;

  _HomeState() {
    heroList = listModel.listHero;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(1),
        elevation: 0,
        title: Text(
          "MY HERO !",
          style: TextStyle(
            fontFamily: "hero",
            fontSize: 38,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.black12,
              height: 400,
              child: PageView.builder(
                itemCount: heroList.length,
                controller: PageController(viewportFraction: 0.9),
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  final hero = heroList[index];

                  final _isSelectedIndex = _selectedIndex == index;
                  final _scale = _isSelectedIndex ? 1.0 : 0.85;

                  return TweenAnimationBuilder<double>(
                    duration: Duration(milliseconds: 400),
                    tween: Tween(
                      begin: _scale,
                      end: _scale,
                    ),
                    child: HeroCard(
                      image: hero.image,
                      name: hero.name,
                      nickname: hero.nickname,
                      power: hero.power,
                      gif: hero.gif,
                    ),
                    builder: (context, scale, child) {
                      return Transform.scale(
                        scale: scale,
                        child: child,
                      );
                    },
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
