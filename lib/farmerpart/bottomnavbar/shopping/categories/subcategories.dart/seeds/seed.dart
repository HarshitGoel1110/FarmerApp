import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Seed with ChangeNotifier{
  
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final String price;
  final String rating;

  Seed({this.id, this.category, this.name, this.description, this.imgUrl, this.price, this.rating,});

  
}

class Seeds with ChangeNotifier{
  List<Seed> _items =[
    Seed(
      id: '1', 
      category: 'Seed', 
      name: 'Coriander Seeds', 
      description: 'If India had a national herb, it would be coriander. Put it in salads or curries as garnish, in sandwiches as chutney, or even snacks to enhance the flavour, there is nothing better than coriander. Famous across the globe as cilantro, it forms an integral part of several world cuisines too. It is also one of the quickest and easiest to grow herbs.',
      imgUrl: 'assets/images/seeds1.webp', 
      price: '85',
      rating: '4.3',
      //page: Mishal(),
    ),
    Seed(
      id: '2', 
      category: 'Seed', 
      name: 'Corn Seed', 
      description: 'If you haven’t eaten a steaming hot corn on the cob on a beautiful rainy day, you are missing out on a happy experience. In addition to being a treat to your taste buds, sweetcorn is also rich in essential vitamins, minerals, antioxidants and is a great source of fibre as well.',
      imgUrl: 'assets/images/seed2.webp', 
      price: '85',
      rating: '4.3',
      //page: Mishal(),
    ),
    Seed(
      id: '3', 
      category: 'Seed', 
      name: 'Beans Seed', 
      description: 'French beans are called string beans and snap beans in English and chavalicha shenga in Marathi. These are popular in salads and side dishes in healthy meals. French beans are eaten raw as well as cooked. You can boil, sauté, steam or microwave French beans. Probably the best thing about French beans is that it is easy to grow and heavy cropping, which means that a novice gardener can easily grow them and enjoy large quantities through a single plant.',
      imgUrl: 'assets/images/seed3.webp', 
      price: '70',
      rating: '4.3',
      //page: Mishal(),
    ),
    
    
  ];

  List<Seed>get items {
    return[..._items];
  }

  Seed findbyId(String id){
    return _items.firstWhere((sd) => sd.id == id);
  }
}