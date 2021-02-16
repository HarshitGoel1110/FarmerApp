//all drawer screens list code is in fjcmainpage which is in bottom nav bar folder inside main farmer joined folder
import 'package:flutter/material.dart';

import 'bottomnavbar/bottomnavbar.dart';
import 'bottomnavbar/farmerjoinedcrops/fjcmainpage.dart';

class FarmerHome extends StatefulWidget {
  @override
  _FarmerHomeState createState() => _FarmerHomeState();
}

class _FarmerHomeState extends State<FarmerHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //drawer screens list code is in FJCMainPage
        body: FJCMainPage(),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

