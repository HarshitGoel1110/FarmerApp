import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Scbuyer with ChangeNotifier{
  
  final String id;
  final String name;
  final String trading;
  final String since;
  final String place;
  final String rating;
  final String imgUrl;
  final String phoneno;
  //final Widget page;
  final String email;
  final String landAcre;

  Scbuyer({this.id, this.landAcre, this.name, this.trading, this.since, this.place, this.rating, this.imgUrl, this.phoneno, this.email,});

  
}

class Scbuyers with ChangeNotifier{
  List<Scbuyer> _items =[
    Scbuyer(
      id: '1',
      name: 'Kartavya Mehta',
      trading: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Scbuyer(
      id: '2',
      name: 'Shyam Shah',
      trading: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    Scbuyer(
      id: '3',
      name: 'Kiran Shah',
      trading: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Scbuyer(
      id: '4',
      name: 'Sahil Shah',
      trading: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    Scbuyer(
      id: '5',
      name: 'Kairav Shah',
      trading: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Scbuyer(
      id: '6',
      name: 'Sahil Shah',
      trading: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    
    
  ];

  List<Scbuyer>get items {
    return[..._items];
  }

  Scbuyer findbyId(String id){
    return _items.firstWhere((scb) => scb.id == id);
  }
}

/*class ScBuyerCard extends StatelessWidget {

  final String id;
  final String name;
  final String trading;
  final String since;
  final String place;
  final String rating;
  final String imgUrl;
  final Widget page;
  final String email;


  const ScBuyerCard({Key key, this.id, this.name, this.trading, this.since, this.place, this.rating, this.imgUrl, this.page, this.email}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: ClipRRect(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
            },
            child: Container(
              //height: 0.195 * MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
              child: Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    
                    Padding(
                      padding: EdgeInsets.only(top: 0.01 * MediaQuery.of(context).size.height,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.015,color: Colors.black),textAlign: TextAlign.start,),
                          SizedBox(height: 1,),
                          Padding(
                            padding: EdgeInsets.only(right: 0.0),
                            child: Text('Trading $trading',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.013,color: Colors.black54),textAlign: TextAlign.start,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height,bottom: 0.005 * MediaQuery.of(context).size.height),
                            child: Text('Since $since',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.013,color: Colors.black54),textAlign: TextAlign.start,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height,bottom: 0.007 * MediaQuery.of(context).size.height),
                            child: Row(
                              children: [
                                Icon(Icons.star_rounded,size: 17,color: Colors.black87,),
                                Padding(
                                  padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height),
                                  child: Text(rating,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.014,color: Colors.black87),textAlign: TextAlign.start,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:0.001 * MediaQuery.of(context).size.height,left: 0.12 * MediaQuery.of(context).size.height),
                      child: Container(
                        height: 0.080 * MediaQuery.of(context).size.height,
                        width: 0.080 * MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(imgUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    //onTap: (){
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shyam()));
                    //},
                    ],
                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.0,top: MediaQuery.of(context).size.height * 0.00),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.height * 0.13,
                          decoration: BoxDecoration(
                            border: Border(top: BorderSide(width: 2,color: Colors.purple,),right: BorderSide(width: 2,color: Colors.purple))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.001,bottom: MediaQuery.of(context).size.height*0.01,top: MediaQuery.of(context).size.height * 0.007),
                            child: FlatButton(
                              onPressed: null,
                              child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on,color: Colors.black54,size: 15),
                                SizedBox(width: 0.005 * MediaQuery.of(context).size.height,),
                                Text(place,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.013,color: Colors.black87)),
                              ],
                            ),
                          ),
                      ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          height: MediaQuery.of(context).size.height * 0.04,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(top: BorderSide(width: 2,color: Colors.purple,),right: BorderSide(width: 2,color: Colors.purple))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01,top: MediaQuery.of(context).size.height * 0.007),
                            child: FlatButton(
                              child: Text('Call',style: GoogleFonts.roboto(color: Colors.black,fontSize: MediaQuery.of(context).size.height * 0.014,),),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          height: MediaQuery.of(context).size.height * 0.04,
                          decoration: BoxDecoration(
                            border: Border(top: BorderSide(width: 2,color: Colors.purple,),),
                            color: Colors.white,
                          ),
                          child: Padding(
                           padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01,top: MediaQuery.of(context).size.height * 0.007),
                            child: FlatButton(
                              child: Text('Chat',style: GoogleFonts.roboto(color: Colors.black,fontSize: MediaQuery.of(context).size.height * 0.014,),),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/