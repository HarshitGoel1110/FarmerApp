//farmer join crop lists

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';



class Farmerjc with ChangeNotifier{
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

  Farmerjc({this.id, this.name, this.growing, this.since, this.place, this.rating, this.imgUrl, this.phoneno, this.email, this.landAcre});

  
}

class Farmerjcs with ChangeNotifier{
  List<Farmerjc> _items =[
    Farmerjc(
      id: '1',
      name: 'Kartavya Mehta',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
    ),
    Farmerjc(
      id: '2',
      name: 'Shyam Shah',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
    ),
    Farmerjc(
      id: '3',
      name: 'Kartavya Mehta',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
    ),
    Farmerjc(
      id: '4',
      name: 'Shyam Shah',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
    ),
    Farmerjc(
      id: '5',
      name: 'Kartavya Mehta',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
    ),
    Farmerjc(
      id: '6',
      name: 'Shyam Shah',
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

  List<Farmerjc>get items {
    return[..._items];
  }

  Farmerjc findbyId(String id){
    return _items.firstWhere((fjc) => fjc.id == id);
  }
}
