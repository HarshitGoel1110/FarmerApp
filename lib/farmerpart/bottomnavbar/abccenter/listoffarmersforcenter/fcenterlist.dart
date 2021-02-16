import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'fcenter.dart';
import 'fcntdetailpage.dart';

class FarmerJCenter extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final fcenterData = Provider.of<Fcenters>(context);
    final fcnts = fcenterData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Farmers List'),
        backgroundColor: Colors.purple[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: fcnts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: MediaQuery.of(context).size.height * 0.00245),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: fcnts[i],
      child: FcenterList(
        name: fcnts[i].name,
        place: fcnts[i].place,
        imgUrl: fcnts[i].imgUrl,
        growing: fcnts[i].growing,
        phoneno: fcnts[i].phoneno,
        //page: scbs[i].page,
        since: fcnts[i].since,
        rating: fcnts[i].rating,
        email: fcnts[i].email,
        //price: trds[i].price,
      ),
      ),
    ),
    );
  }
}

class FcenterList extends StatelessWidget {
  
  final String id;
  final String name;
  final String growing;
  final String since;
  final String place;
  final String rating;
  final String imgUrl;
  //final Widget page;
  final String email;
  final String phoneno;
  final String landAcre;
 
  const FcenterList({Key key,this.phoneno, this.landAcre, this.id, this.name, this.growing, this.since, this.place, this.rating, this.imgUrl, this.email}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {

    final fcnt = Provider.of<Fcenter>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(FcntDetailPage.routeName,arguments: fcnt.place);
      },
      child: FittedBox(
      fit: BoxFit.contain,
      child: ClipRRect(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //width: double.infinity,
            //height: 0.195 * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.purple[100],width: 1),boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
            child: Padding(
              padding: EdgeInsets.only(top:0.01 * MediaQuery.of(context).size.height,),
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
                            child: Text('Growing $growing',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.013,color: Colors.black54),textAlign: TextAlign.start,),
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
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.0,top: MediaQuery.of(context).size.height * 0.01),
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
                              Icon(Icons.place,color: Colors.black54,size: 15),
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
    ),
    );
  }
}

