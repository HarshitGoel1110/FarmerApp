
import 'package:farmer/abccentermain/farmersrequest/frdetailpage.dart';
import 'package:farmer/abccentermain/farmersrequest/frequest.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FRHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final fmemberData = Provider.of<Fmrequests>(context);
    final fmrs = fmemberData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer\'s List ',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
        backgroundColor: Colors.orange[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: fmrs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: MediaQuery.of(context).size.height * 0.00245),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: fmrs[i],
      child: FmrItem(
        name: fmrs[i].name,
        id: fmrs[i].id,
        imgUrl: fmrs[i].imgUrl,
        growing: fmrs[i].growing,
        phoneno: fmrs[i].phoneno,
        since: fmrs[i].since,
        rating: fmrs[i].rating,
        email: fmrs[i].email,
        state: fmrs[i].state,
      ),
      ),
    ),
    );
  }
}

class FmrItem extends StatelessWidget {
  
  final String id;
  final String name;
  final String phoneno;
  final String email;
  final String address;
  final String growing;
  final String since;
  final String pincode;
  final String state;
  final String rating;
  final String imgUrl;
  final String landAcre;
  final String income;
 
  const FmrItem({Key key,this.phoneno, this.landAcre, this.id, this.name, this.growing, this.since, this.rating, this.imgUrl, this.email, this.address, this.pincode, this.state, this.income}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {

    final trdmr = Provider.of<Fmrequest>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(FmrequestDetailPage.routeName,arguments: trdmr.id);
      },
      child: SizedBox.expand(
        child: FittedBox(
        fit: BoxFit.contain,
        child: ClipRRect(
          child: Padding(
            padding: EdgeInsets.all(8.0),
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
                            Row(
                              children: [
                                Text(name,style: GoogleFonts.roboto(letterSpacing: 1.1,fontSize: MediaQuery.of(context).size.height * 0.015,fontWeight: FontWeight.w600,color: Colors.black),textAlign: TextAlign.start,),
                                SizedBox(width: 0.01 * MediaQuery.of(context).size.height),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.star_rounded,size: 17,color: Colors.yellow[800],),
                                    Padding(
                                      padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height),
                                      child: Text(rating,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.014,color: Colors.black87),textAlign: TextAlign.start,),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 1,),
                            Padding(
                              padding: EdgeInsets.only(right: 0.0),
                              child: Text('Growing $growing',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.013,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height,bottom: 0.005 * MediaQuery.of(context).size.height),
                              child: Text('From $state',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.013,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                          ],
                        ),
                      ),
                      //onTap: (){
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shyam()));
                      //},
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
                          child: Container(
                            //width: MediaQuery.of(context).size.height * 0.33,
                            child: FlatButton(
                              color: Colors.orange[400],//Color.fromRGBO(0,0,87,1),
                              onPressed: () {  },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,color: Color.fromRGBO(0,0,87,1),size: 19),
                                  SizedBox(width: 7,),
                                  Text('Call',style: GoogleFonts.openSans(color: Color.fromRGBO(0,0,87,1),fontWeight: FontWeight.w600,letterSpacing: .8), )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
                          child: FlatButton(
                            color: Color.fromRGBO(0,0,87,1),
                            onPressed: () {  },
                            child: Text(' Accept ',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: .8),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
                          child: FlatButton(
                            color: Color.fromRGBO(0,0,87,1),
                            onPressed: () {  },
                            child: Text(' Reject ',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: .8),),
                          ),
                        ),
                        
                      ],
                    ),
                  ],
                ),    
              ),    
            ),
          ),
        ),
    ),
      ),
    );
  }
}

