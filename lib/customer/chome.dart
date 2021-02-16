
import 'package:farmer/customer/traderselctedcrop/traderselecthome.dart';
import 'package:flutter/material.dart';

import 'bottomnav.dart';

class Thome extends StatefulWidget {
  @override
  _ThomeState createState() => _ThomeState();
}

class _ThomeState extends State<Thome> {

@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //drawer screens list code is in FJCMainPage
        body: TraderSelectCropHome(),
        bottomNavigationBar: BottomNaviBar(),
      ),
    );
  }
}