import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Article with ChangeNotifier{
  final String id;
  final String title;
  final String imgUrl;
  final String description;

  Article({
    @required this.id,
    @required this.imgUrl,
    @required this.title,  
    @required this.description,
    });
}

class Articles with ChangeNotifier{
  List<Article> _items =[
    Article(
      id: '1', 
      title: 'Crops To Grow In Winter', 
      imgUrl: 'assets/images/article.jpg',
      description: 'Having a thriving vegetable garden doesn\'t have to end when summer does. With a little bit of planning, and preparation you can grow vegetables well into the winter months or even year round if you live in a warmer climate down south.Vegetables Eight of the best vegetables to grow in winter: \nKale - No self-respecting winter garden is complete without several varieties of hardy kale. In fact, as the temperature drops in late autumn, the flavor of kale improves. We grow kale two ways – as a mature crop for soups, sautés and chips and as a baby green for tender winter salads. ‘Winterbor’ is a beautiful and delicious kale that grows three feet tall with deeply curled blue-green leaves.  I also enjoy growing ‘Red Russian’, a classic variety with vivid purple stems and gray-green leaves. This is the variety we like to use for kale chips. '
    ),
    Article(
      id: '2', 
      title: 'Machines For Farming',
      imgUrl: 'assets/images/article2.jpg',
      description: 'Smart farmers made by adopting modern agriculture smart Agriculture Equipment, increasing income most farmers in India do farming through traditional methods. Due to which they get less crop production. As a result, their income starts declining. At the same time, the farmer increases his crop production by farming with the help of modern resources and automatic farming equipment. This gives him a good profit which increases his income. Uses of this Agriculture Equipment will increase farmer production and profits. Today, the farmers who are doing smart farming are making good profits by using new farming tools made with modern technology, which is increasing their income. You too become a smart farmer and increase your income by using agricultural implement that give better results in this agricultural production. At this time companies have also reduced the prices of their products to benefit the farmers.',
    ),
    
  ];

  List<Article>get items {
    return[..._items];
  }

  Article findbyId(String id){
    return _items.firstWhere((art) => art.id == id);
  }
}
