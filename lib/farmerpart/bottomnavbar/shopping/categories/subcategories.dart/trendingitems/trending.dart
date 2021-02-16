import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Trending with ChangeNotifier{
  
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final String price;
  final String rating;

  Trending({this.id, this.category, this.name, this.description, this.imgUrl, this.price, this.rating,});

  
}

class Trendings with ChangeNotifier{
  List<Trending> _items =[
    Trending(
      id: '1', 
      category: 'Trending', 
      name: 'Harvesting Trending', 
      description: 'The modern combine harvester, or simply combine, is a versatile machine designed to efficiently harvest a variety of grain crops. The name derives from its combining four separate harvesting operations—reaping, threshing, gathering and winnowing—into a single process. Among the crops harvested with a combine are wheat, rice, oats, rye, barley, corn (maize), sorghum, soybeans, flax (linseed), sunflowers and canola. ',
      imgUrl: 'assets/images/mac.jpg', 
      price: '20000',
      rating: '4.3',
      //page: Mishal(),
    ),
    Trending(
      id: '2', 
      category: 'Seed', 
      name: 'Corn Seed', 
      description: 'If you haven’t eaten a steaming hot corn on the cob on a beautiful rainy day, you are missing out on a happy experience. In addition to being a treat to your taste buds, sweetcorn is also rich in essential vitamins, minerals, antioxidants and is a great source of fibre as well.',
      imgUrl: 'assets/images/seed2.webp', 
      price: '85',
      rating: '4.3',
      //page: Mishal(),
    ),
    Trending(
      id: '3', 
      category: 'Trending', 
      name: 'Tractor Trending', 
      description: 'The modern combine harvester, or simply combine, is a versatile machine designed to efficiently harvest a variety of grain crops. The name derives from its combining four separate harvesting operations—reaping, threshing, gathering and winnowing—into a single process. Among the crops harvested with a combine are wheat, rice, oats, rye, barley, corn (maize), sorghum, soybeans, flax (linseed), sunflowers and canola. ',
      imgUrl: 'assets/images/article2.jpg', 
      price: '20000',
      rating: '4.3',
      //page: Mishal(),
    ),
    Trending(
      id: '4', 
      category: 'Trending', 
      name: 'Tractor Trending', 
      description: 'The modern combine harvester, or simply combine, is a versatile machine designed to efficiently harvest a variety of grain crops. The name derives from its combining four separate harvesting operations—reaping, threshing, gathering and winnowing—into a single process. Among the crops harvested with a combine are wheat, rice, oats, rye, barley, corn (maize), sorghum, soybeans, flax (linseed), sunflowers and canola. ',
      imgUrl: 'assets/images/machine1.jpg', 
      price: '20000',
      rating: '4.3',
      //page: Mishal(),
    ),
    Trending(
      id: '5', 
      category: 'Seed', 
      name: 'Beans Seed', 
      description: 'French beans are called string beans and snap beans in English and chavalicha shenga in Marathi. These are popular in salads and side dishes in healthy meals. French beans are eaten raw as well as cooked. You can boil, sauté, steam or microwave French beans. Probably the best thing about French beans is that it is easy to grow and heavy cropping, which means that a novice gardener can easily grow them and enjoy large quantities through a single plant.',
      imgUrl: 'assets/images/seed3.webp', 
      price: '70',
      rating: '4.3',
      //page: Mishal(),
    ),
    
    
  ];

  List<Trending>get items {
    return[..._items];
  }

  Trending findbyId(String id){
    return _items.firstWhere((tr) => tr.id == id);
  }
}