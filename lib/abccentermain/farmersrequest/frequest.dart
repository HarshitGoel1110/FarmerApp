import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Fmrequest with ChangeNotifier{
  
  @required final String id;
  @required final String name;
  @required final String phoneno;
  @required final String email;
  @required final String address;
  @required final String growing;
  @required final String since;
  @required final String pincode;
  @required final String state;
  @required final String rating;
  @required final String imgUrl;
  @required final String landAcre;
  @required final String income;
  @required final String cropjoin;

  Fmrequest({this.id, this.cropjoin, this.income,this.address, this.state,this.landAcre, this.name, this.growing, this.since, this.pincode, this.rating, this.imgUrl, this.phoneno, this.email,});

  
}

class Fmrequests with ChangeNotifier{
  List<Fmrequest> _items =[
    Fmrequest(
      id: '1',
      name: 'Priyam Patel',
      growing: 'Maize',
      since: '2014',
      rating: '3.5',
      pincode: '320054',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      address: '25,suraj society,jaipur',
      state: 'Rajasthan',
      income: '100000',
      cropjoin: 'Cotton, Wheat',
    ),
    Fmrequest(
      id: '2',
      name: 'Sundar Parikh',
      growing: 'Cotton',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      pincode: '450014',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      address: '25,suraj society,jaipur',
      state: 'Rajasthan',
      income: '100000',
      cropjoin: 'Paddy, Wheat',
    ),
    
    
  ];

  List<Fmrequest>get items {
    return[..._items];
  }

  Fmrequest findbyId(String id){
    return _items.firstWhere((fmr) => fmr.id == id);
  }
}