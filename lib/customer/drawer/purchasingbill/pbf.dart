import 'package:flutter/foundation.dart';

class Pbfarmer with ChangeNotifier{
  
  final String id;
  final String name;
  final String buyed;
  final String since;
  final String place;
  final String rating;
  final String imgUrl;
  final String phoneno;
  //final Widget page;
  final String email;
  final String landAcre;

  Pbfarmer({this.id, this.landAcre, this.name, this.buyed, this.since, this.place, this.rating, this.imgUrl, this.phoneno, this.email,});

  
}

class Pbfarmers with ChangeNotifier{
  List<Pbfarmer> _items =[
    Pbfarmer(
      id: '1',
      name: 'Minesh Rai',
      buyed: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Pbfarmer(
      id: '2',
      name: 'Yam Modi',
      buyed: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    Pbfarmer(
      id: '3',
      name: 'Madhu Rai',
      buyed: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Pbfarmer(
      id: '4',
      name: 'Rishi Modi',
      buyed: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    Pbfarmer(
      id: '5',
      name: 'Minesh Rai',
      buyed: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Pbfarmer(
      id: '6',
      name: 'Yam Modi',
      buyed: 'Paddy',
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

  List<Pbfarmer>get items {
    return[..._items];
  }

  Pbfarmer findbyId(String id){
    return _items.firstWhere((pbf) => pbf.id == id);
  }
}