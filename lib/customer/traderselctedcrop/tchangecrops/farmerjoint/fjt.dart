//farmer join crop lists

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';



class Traderjc with ChangeNotifier{
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

  Traderjc({this.id, this.name, this.growing, this.since, this.place, this.rating, this.imgUrl, this.phoneno, this.email, this.landAcre});

  
}

class Traderjcs with ChangeNotifier{
  List<Traderjc> _items =[
    Traderjc(
      id: '1',
      name: 'Samay Mehta',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
    ),
    Traderjc(
      id: '2',
      name: 'Priyank Shah',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
    ),Traderjc(
      id: '3',
      name: 'Samay Mehta',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
    ),
    Traderjc(
      id: '4',
      name: 'Priyank Shah',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
    ),
    Traderjc(
      id: '5',
      name: 'Samay Mehta',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
    ),
    Traderjc(
      id: '6',
      name: 'Priyank Shah',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
    ),
    
    
  ];

  List<Traderjc>get items {
    return[..._items];
  }

  Traderjc findbyId(String id){
    return _items.firstWhere((tjc) => tjc.id == id);
  }
}
