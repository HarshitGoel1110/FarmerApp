
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Fvfarmer with ChangeNotifier{
  
  final String id;
  final String name;
  final String growing;
  final String since;
  final String address;
  final String rating;
  final String image;
  final String phoneno;
  //final Widget page;
  final String email;
  
  final String landAcre;

  Fvfarmer({this.id, this.landAcre, this.name, this.growing, this.since, this.address, this.rating, this.image, this.phoneno, this.email,});

  
}

class Fvfarmers with ChangeNotifier{
  List<Fvfarmer> _items =[
    Fvfarmer(
      id: '1',
      image: 'assets/images/p2.jpg',
      name: 'Umesh Shah',
      growing: 'Wheat',
      since: '2012',
      address: 'Jaipur, Rajasthan',
      rating: '4.2',
      phoneno: '9874563218',
      email: 'abc@gmail.com',
      landAcre: '1',
    ),
    Fvfarmer(
      id: '2',
      name: 'Yam Modi',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      address: 'Punjab',
      image: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
    ),
    Fvfarmer(
      id: '3',
      image: 'assets/images/p2.jpg',
      name: 'Vicky Modi',
      growing: 'Wheat',
      since: '2012',
      address: 'Jaipur, Rajasthan',
      rating: '4.2',
      phoneno: '9874563218',
      email: 'abc@gmail.com',
      landAcre: '1',
    ),
    Fvfarmer(
      id: '4',
      name: 'Pulkit Samrat',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      address: 'Punjab',
      image: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
    ),
    Fvfarmer(
      id: '5',
      image: 'assets/images/p2.jpg',
      name: 'Umesh Shah',
      growing: 'Wheat',
      since: '2012',
      address: 'Jaipur, Rajasthan',
      rating: '4.2',
      phoneno: '9874563218',
      email: 'abc@gmail.com',
      landAcre: '1',
    ),
    Fvfarmer(
      id: '6',
      name: 'Yam Modi',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      address: 'Punjab',
      image: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
    ),
    
    
  ];

  List<Fvfarmer>get items {
    return[..._items];
  }

  Fvfarmer findbyId(String id){
    return _items.firstWhere((fvf) => fvf.id == id);
  }
}


/*class FarmVisitList extends StatefulWidget {
  @override
  _FarmVisitListState createState() => _FarmVisitListState();
}

class _FarmVisitListState extends State<FarmVisitList> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom : 0.058 * MediaQuery.of(context).size.height,),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: 0.00275 * MediaQuery.of(context).size.height,
                children: [
                  FarmVisitListCard(
                    image: 'assets/images/p2.jpg',
                    name: 'Umesh Shah',
                    growing: 'Wheat',
                    since: '2012',
                    address: 'Jaipur, Rajasthan',
                    page: Umeshs(),
                  ),
                  FarmVisitListCard(
                    image: 'assets/images/p2.jpg',
                    name: 'Kiran Shah',
                    growing: 'Apple',
                    since: '2015',
                    address: 'Amritsar, Punjab',
                    //page: Kiran(),
                  ),
                  FarmVisitListCard(
                    image: 'assets/images/p2.jpg',
                    name: 'Mitesh Shah',
                    growing: 'Coffee',
                    since: '2004',
                    address: 'Kerela',
                    //page: Mitesh(),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}*/