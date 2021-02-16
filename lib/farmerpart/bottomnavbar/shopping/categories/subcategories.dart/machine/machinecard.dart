import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Machine with ChangeNotifier{
  
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final String price;
  final String rating;

  Machine({this.id, this.category, this.name, this.description, this.imgUrl, this.price, this.rating,});

  
}

class Machines with ChangeNotifier{
  List<Machine> _items =[
    Machine(
      id: '1', 
      category: 'Machine', 
      name: 'Harvesting Machine', 
      description: 'The modern combine harvester, or simply combine, is a versatile machine designed to efficiently harvest a variety of grain crops. The name derives from its combining four separate harvesting operations—reaping, threshing, gathering and winnowing—into a single process. Among the crops harvested with a combine are wheat, rice, oats, rye, barley, corn (maize), sorghum, soybeans, flax (linseed), sunflowers and canola. ',
      imgUrl: 'assets/images/mac.jpg', 
      price: '20000',
      rating: '4.3',
      //page: Mishal(),
    ),
    Machine(
      id: '2', 
      category: 'Machine', 
      name: 'Tractor Machine', 
      description: 'The modern combine harvester, or simply combine, is a versatile machine designed to efficiently harvest a variety of grain crops. The name derives from its combining four separate harvesting operations—reaping, threshing, gathering and winnowing—into a single process. Among the crops harvested with a combine are wheat, rice, oats, rye, barley, corn (maize), sorghum, soybeans, flax (linseed), sunflowers and canola. ',
      imgUrl: 'assets/images/article2.jpg', 
      price: '20000',
      rating: '4.3',
      //page: Mishal(),
    ),
    Machine(
      id: '3', 
      category: 'Machine', 
      name: 'Tractor Machine', 
      description: 'The modern combine harvester, or simply combine, is a versatile machine designed to efficiently harvest a variety of grain crops. The name derives from its combining four separate harvesting operations—reaping, threshing, gathering and winnowing—into a single process. Among the crops harvested with a combine are wheat, rice, oats, rye, barley, corn (maize), sorghum, soybeans, flax (linseed), sunflowers and canola. ',
      imgUrl: 'assets/images/machine1.jpg', 
      price: '20000',
      rating: '4.3',
      //page: Mishal(),
    ),
    
    
  ];

  List<Machine>get items {
    return[..._items];
  }

  Machine findbyId(String id){
    return _items.firstWhere((mac) => mac.id == id);
  }
}