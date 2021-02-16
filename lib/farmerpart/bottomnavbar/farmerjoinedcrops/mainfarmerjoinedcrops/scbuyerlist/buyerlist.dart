
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'scbdetailpage.dart';
import 'scbuyerscard.dart';

class ScBuyerList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final scbuyerData = Provider.of<Scbuyers>(context);
    final scbs = scbuyerData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Traders List'),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: scbs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: MediaQuery.of(context).size.height * 0.00275),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: scbs[i],
      child: ScbuyerList(
        name: scbs[i].name,
        place: scbs[i].place,
        imgUrl: scbs[i].imgUrl,
        trading: scbs[i].trading,
        phoneno: scbs[i].phoneno,
        //page: scbs[i].page,
        since: scbs[i].since,
        rating: scbs[i].rating,
        email: scbs[i].email,
        //price: trds[i].price,
      ),
      ),
    ),
    );
  }
}

class ScbuyerList extends StatelessWidget {
  
  final String id;
  final String name;
  final String trading;
  final String since;
  final String place;
  final String rating;
  final String imgUrl;
  //final Widget page;
  final String email;
  final String phoneno;
  final String landAcre;
 
  const ScbuyerList({Key key,this.phoneno, this.landAcre, this.id, this.name, this.trading, this.since, this.place, this.rating, this.imgUrl, this.email}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {

    final scb = Provider.of<Scbuyer>(context);

    return GestureDetector(
      onTap: () {
         Navigator.of(context).pushNamed(ScbDetailPage.routeName,arguments: scb.id);
      },
      child: FittedBox(
      fit: BoxFit.contain,
      child: ClipRRect(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //height: 0.195 * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.purple[100],width: 1),boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                  
                  Padding(
                    padding: EdgeInsets.only(top:0.001 * MediaQuery.of(context).size.height,left: 0.01 * MediaQuery.of(context).size.height),
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

                  Padding(
                    padding: EdgeInsets.only(top: 0.01 * MediaQuery.of(context).size.height,left: 0.01 * MediaQuery.of(context).size.height),
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
                          border: Border(top: BorderSide(width: 1,color: Colors.purple,),right: BorderSide(width: 1,color: Colors.purple))
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
                          border: Border(top: BorderSide(width: 1,color: Colors.purple,),right: BorderSide(width: 1,color: Colors.purple))
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
                          border: Border(top: BorderSide(width: 1,color: Colors.purple,),),
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
}

