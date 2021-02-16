import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Tsfarmer with ChangeNotifier{
  
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

  Tsfarmer({this.id, this.landAcre, this.name, this.growing, this.since, this.place, this.rating, this.imgUrl, this.phoneno, this.email,});

  
}

class Tsfarmers with ChangeNotifier{
  List<Tsfarmer> _items =[
    Tsfarmer(
      id: '1',
      name: 'Minesh Rai',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Tsfarmer(
      id: '2',
      name: 'Yam Modi',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    Tsfarmer(
      id: '3',
      name: 'Mayuresh Thakkar',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Tsfarmer(
      id: '4',
      name: 'Yash Mehta',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    Tsfarmer(
      id: '5',
      name: 'Yam Modi',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    Tsfarmer(
      id: '6',
      name: 'Mayuresh Thakkar',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Tsfarmer(
      id: '7',
      name: 'Yash Mehta',
      growing: 'Paddy',
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

  List<Tsfarmer>get items {
    return[..._items];
  }

  Tsfarmer findbyId(String id){
    return _items.firstWhere((tsf) => tsf.id == id);
  }
}