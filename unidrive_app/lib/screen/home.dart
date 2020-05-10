import 'package:flutter/material.dart';
import 'package:unidriveapp/screen/pegar.list.dart';
import 'package:unidriveapp/widgets/home.option.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _topContainerHeight = 400;
  double _bottomContainerHeight = 400;
  Color back = Colors.white;
  Color showTop = Color(0xFF08AEA4);
  Color showBottom = Color(0xFFFFFFFF);
  double fontsize = 40;
  bool topButtonDisabled = false;
  bool bottomButtonDisabled = false;

  BorderRadiusGeometry _topContainerBorderRadius = BorderRadius.only(
    bottomLeft: const Radius.circular(40),
    bottomRight: const Radius.circular(40),
  );

  deleteTopContainer() {
    setState(() {
      showTop = Color(0xFFFFFFFF);
      topButtonDisabled = true;
    });
  }

  Future deleteBottomContainer() async {
    await setState(() {
      showBottom = Color(0xFF08AEA4);
      bottomButtonDisabled = true;
    });
    await Future.delayed(Duration(seconds: 2));
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PegarCaronaList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      body: AnimatedContainer(
        color: showBottom,
        duration: Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
        child: Column(
          children: <Widget>[
            HomeOption(
              ContainerBorderRadius: _topContainerBorderRadius,
              ContainerHeight: 550,
              func: deleteBottomContainer,
              title1: "Pegar",
              title2: "Carona",
              backColor: showTop,
              fontColor: Color(0xFFFFFFFF),
              isButtonDisabled: topButtonDisabled,
            ),
            SizedBox(
              height: 50,
            ),
            HomeOption(
              ContainerHeight: 100,
              func: deleteTopContainer,
              title1: "Dar",
              title2: "Carona",
              backColor: Colors.transparent,
              fontColor: Color(0xFF08AEA4),
              isButtonDisabled: bottomButtonDisabled,
            ),
          ],
        ),
      ),
    );
  }
}
