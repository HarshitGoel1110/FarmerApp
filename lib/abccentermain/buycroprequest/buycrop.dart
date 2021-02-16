import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Abcbuycrop with ChangeNotifier{
  
  @required final String id;
  @required final String name;
  @required final String phoneno;
  @required final String email;
  @required final String address;
  @required final String trading;
  @required final String since;
  @required final String pincode;
  @required final String state;
  @required final String rating;
  @required final String imgUrl;
  @required final String landAcre;
  @required final String income;
  @required final String cropjoin;
  @required final String cropbuy;

  Abcbuycrop({this.id, this.cropbuy, this.cropjoin, this.income,this.address, this.state,this.landAcre, this.name, this.trading, this.since, this.pincode, this.rating, this.imgUrl, this.phoneno, this.email,});

  
}

class Abcbuycrops with ChangeNotifier{
  List<Abcbuycrop> _items =[
    Abcbuycrop(
      id: '1',
      name: 'Shailesh Patel',
      trading: 'Maize',
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
      cropbuy: 'Wheat',
    ),
    Abcbuycrop(
      id: '2',
      name: 'Payal Mehta',
      trading: 'Cotton',
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
      cropbuy: 'Paddy',
    ),
    
    
  ];

  List<Abcbuycrop>get items {
    return[..._items];
  }

  Abcbuycrop findbyId(String id){
    return _items.firstWhere((abc) => abc.id == id);
  }
}