import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Tcentr with ChangeNotifier{
  
  final String id;
  final String location;
  final String address;
  final String img;
  final String phone;
  final String title;
  final String pname;
  final String since;
  final String mail;
  final String bio;
  final String fjoined;
  final String centercode;
  final String centercompany;

  Tcentr({this.centercode, this.id, this.centercompany, this.location, this.address, this.img, this.phone, this.title, this.pname, this.since, this.mail, this.bio, this.fjoined});
  
}

class Tcenters with ChangeNotifier{
  List<Tcentr> _items =[
    Tcentr(
      id: '1',
      img: 'assets/images/agriculturecenter.jpg',
      title: 'ABC Center',
      phone: '1234567890',
      location: 'Vasai',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Vasai, Gujarat ',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'GJFXC3DF',
      centercompany: 'Fizet',
    ),
    Tcentr(
      id: '2',
      img: 'assets/images/agriculturecenter.jpg',
      title: 'ABC Center',
      phone: '1234567890',
      location: 'Jaipur',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Jaipur, Rajasthan',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'PSFXC5QR',
      centercompany: 'Sunpatho',
    ),
    Tcentr(
      id: '3',
      img: 'assets/images/agriculturecenter.jpg',
      title: 'ABC Center',
      phone: '1234567890',
      location: 'Unjha',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Vasai, Gujarat ',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'GJFXC3DF',
      centercompany: 'Surya',
    ),
    Tcentr(
      id: '4',
      img: 'assets/images/agriculturecenter.jpg',
      title: 'ABC Center',
      phone: '1234567890',
      location: 'Udaipur',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Jaipur, Rajasthan',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'PSFXC5QR',
      centercompany: 'Sunpatho',
    ),
    Tcentr(
      id: '5',
      img: 'assets/images/agriculturecenter.jpg',
      title: 'ABC Center',
      phone: '1234567890',
      location: 'Vasai',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Vasai, Gujarat ',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'GJFXC3DF',
      centercompany: 'Sunpatho',
    ),
    Tcentr(
      id: '6',
      img: 'assets/images/agriculturecenter.jpg',
      title: 'ABC Center',
      phone: '1234567890',
      location: 'Jaipur',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Jaipur, Rajasthan',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'PSFXC5QR',
      centercompany: 'Sunpatho',
    ),

    
    
  ];

  List<Tcentr>get items {
    return[..._items];
  }

  Tcentr findbyId(String id){
    return _items.firstWhere((tcnt) => tcnt.id == id);
  }

  

}