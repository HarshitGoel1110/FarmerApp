
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'lidetailpage.dart';
import 'lirequest.dart';

class LIHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final loaninsuData = Provider.of<Lirequests>(context);
    final lirs = loaninsuData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Loan / Insurance ',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
        backgroundColor: Colors.orange[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: lirs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: MediaQuery.of(context).size.height * 0.00245),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: lirs[i],
      child: LIItem(
        name: lirs[i].name,
        id: lirs[i].id,
        imgUrl: lirs[i].imgUrl,
        growing: lirs[i].growing,
        phoneno: lirs[i].phoneno,
        since: lirs[i].since,
        rating: lirs[i].rating,
        email: lirs[i].email,
        state: lirs[i].state,
      ),
      ),
    ),
    );
  }
}

class LIItem extends StatelessWidget {
  
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
 
  const LIItem({Key key,this.phoneno, this.landAcre, this.id, this.name, this.growing, this.since, this.rating, this.imgUrl, this.email, this.address, this.pincode, this.state, this.income}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {

    final lir = Provider.of<Lirequest>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(LIrequestDetailPage.routeName,arguments: lir.id);
      },
      child: SizedBox.expand(
        child: FittedBox(
        fit: BoxFit.fill,
        child: ClipRRect(
          child: Padding(
            padding: EdgeInsets.only(right: 8.0,left: 8,top: 5 ),
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
                            width: MediaQuery.of(context).size.height * 0.33,
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

