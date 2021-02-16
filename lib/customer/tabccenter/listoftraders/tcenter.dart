import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Trcenter with ChangeNotifier{
  
  final String id;
  final String name;
  final String growing;
  final String since;
  final String place;
  final String rating;
  final String imgUrl;
  final String phoneno;
  //final Widget page;
  final String email;
  final String landAcre;

  Trcenter({this.id, this.landAcre, this.name, this.growing, this.since, this.place, this.rating, this.imgUrl, this.phoneno, this.email,});

  
}

class Trcenters with ChangeNotifier{
  List<Trcenter> _items =[
    Trcenter(
      id: '1',
      name: 'Priyam Patel',
      growing: 'Maize',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Trcenter(
      id: '2',
      name: 'Sundar Parikh',
      growing: 'Cotton',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    
    
  ];

  List<Trcenter>get items {
    return[..._items];
  }

  Trcenter findbyPlace(String place){
    return _items.firstWhere((tcnt) => tcnt.place == place);
  }
}