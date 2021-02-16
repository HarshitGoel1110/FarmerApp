import 'package:flutter/foundation.dart';

class Trader with ChangeNotifier{
  final String id;
  final String name;
  final String phone;
  final String buy;
  final String address;
  final double price;
  final String imgUrl;
  final String since;
  final String rating;
  final String mail;

  Trader({
    @required this.buy, 
    @required this.price, 
    @required this.id, 
    @required this.address,
    @required this.name, 
    @required this.phone, 
    @required this.imgUrl,
    @required this.since,  
    @required this.rating,  
    @required this.mail,  
    });
}

class Traders with ChangeNotifier{
  List<Trader> _items =[
    Trader(
      id: '1', 
      name: 'Parshwa Modi', 
      phone: '4569842371',
      address: 'Jalandhar, Punjab',
      imgUrl: 'assets/images/p2.jpg', 
      buy: '20 kg Apple',
      price: 20000,
      since: '2014',
      rating: '4.3',
      mail: 'abc@gmail.com',
    ),
    Trader(
      id: '2', 
      name: 'Shivam Patil', 
      phone: '564842371',
      address: 'Surat, Gujarat',
      imgUrl: 'assets/images/p2.jpg', 
      buy: '20 kg Apple',
      price: 20000,
      since: '2014',
      rating: '3.3',
      mail: 'abc@gmail.com',
    ),
    
    
  ];

  List<Trader>get items {
    return[..._items];
  }

  Trader findbyId(String id){
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}