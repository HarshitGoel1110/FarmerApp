import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Centr with ChangeNotifier{
  
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

  Centr({this.centercode, this.id, this.centercompany, this.location, this.address, this.img, this.phone, this.title, this.pname, this.since, this.mail, this.bio, this.fjoined});
  
}

class Centers with ChangeNotifier{
  List<Centr> _items =[
    Centr(
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
      centercompany: 'BioTech',
    ),
    Centr(
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
      centercompany: 'AgriSun',
    ),
    Centr(
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
      centercompany: 'Pharma',
    ),
    Centr(
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
      centercompany: 'BioTech',
    ),
    Centr(
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
      centercompany: 'BioTech',
    ),
    Centr(
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
      centercompany: 'BioTech',
    ),
    
    
  ];

  List<Centr>get items {
    return[..._items];
  }

  Centr findbyId(String id){
    return _items.firstWhere((cnt) => cnt.id == id);
  }

  

}