
import 'package:farmer/customer/tabccenter/tabcenterhome.dart';
import 'package:farmer/customer/traderselctedcrop/traderselecthome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class BottomNaviBar extends StatefulWidget {
  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  
  var currentTab = [
    //FJCMainPage(),
    TraderSelectCropHome(),
    TABCCenterHome(),
    //ShopScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var providers = Provider.of<BottomNaviigationBarProvider>(context);
    return Scaffold(
      body: currentTab[providers.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.cyan[800],
        currentIndex: providers.currentIndex,
        onTap: (index) {
          providers.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.center_focus_strong),
            label: 'ABC Center',
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          )*/
        ],
      ),
    );
  }
}

class BottomNaviigationBarProvider with ChangeNotifier{

  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }
}
