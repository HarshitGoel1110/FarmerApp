
import 'package:farmer/customer/drawer/purchasingbill/pbf.dart';
import 'package:farmer/customer/drawer/purchasingbill/pbfdetail.dart';
import 'package:provider/provider.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PbFarmerList extends StatelessWidget {
  
  final String id;
  final String name;
  final String buyed;
  final String since;
  final String place;
  final String rating;
  final String imgUrl;
  //final Widget page;
  final String email;
  final String phoneno;
  final String landAcre;
 
  const PbFarmerList({Key key,this.phoneno, this.landAcre, this.id, this.name, this.buyed, this.since, this.place, this.rating, this.imgUrl, this.email}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {

    final tsf = Provider.of<Pbfarmer>(context);

    return GestureDetector(
      onTap: () {
         Navigator.of(context).pushNamed(PbfDetailPage.routeName,arguments: tsf.id);
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
                          child: Text('Growing $buyed',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.013,color: Colors.black54),textAlign: TextAlign.start,),
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
                        height: MediaQuery.of(context).size.height * 0.05,
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
                              SizedBox(width: 0.004 * MediaQuery.of(context).size.height,),
                              Text(place,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.014,color: Colors.black87)),
                            ],
                          ),
                        ),
                    ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.cyan[800],
                          //color: Colors.white,
                          border: Border(top: BorderSide(width: 1,color: Colors.purple,),right: BorderSide(width: 1,color: Colors.purple))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.005,top: MediaQuery.of(context).size.height * 0.005),
                          child: FlatButton(
                            child: Text('Accept \nPayment',style: GoogleFonts.roboto(color: Colors.white,fontSize: MediaQuery.of(context).size.height * 0.014,),),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          border: Border(top: BorderSide(width: 1,color: Colors.purple,),),
                          color: Colors.cyan[200],
                          //color: Colors.white,
                        ),
                        child: Padding(
                         padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.005,top: MediaQuery.of(context).size.height * 0.005),
                          child: FlatButton(
                            child: Text('Reject\n Payment',style: GoogleFonts.roboto(color: Colors.black,fontSize: MediaQuery.of(context).size.height * 0.014,),),
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



/*class PurchasingBill extends StatefulWidget {
  @override
  _PurchasingBillState createState() => _PurchasingBillState();
}

class _PurchasingBillState extends State<PurchasingBill> {

  void _showRatingDialog() {
    // We use the built in showDialog function to show our Rating Dialog
    var commentw;
    showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) {
          return RatingDialog(
            icon: Icon(Icons.rate_review,
              size:  50,
              color: Colors.purple,
            ),
            title: "The Rating Dialog",
            description:
                "Tap a star to set your rating for this farmer inconsideration in communication, goods, etc..",
            submitButton: "SUBMIT",
            alternativeButton: "Contact Farmer instead?",
            accentColor: Colors.cyan[800], // optional
            onSubmitPressed: (int rating) {
              print("onSubmitPressed: rating = $rating");
            },
          );
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer List',style: GoogleFonts.roboto(),),
        backgroundColor: Colors.cyan[800],
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
              child: Container(
                //height: MediaQuery.of(context).size.height * 0.199,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.150,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shivam Zala ',style: GoogleFonts.roboto(fontSize: 18),textAlign: TextAlign.start,),
                        Padding(
                          padding:EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.030),
                          child: Text('1234567890 ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 0.0),
                          child: Text('Buyed 5 kg Paddy ',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.03),
                          child: Text('Rs - 20000',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.007,bottom: MediaQuery.of(context).size.height * 0.01),
                          child: Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.030,
                                child: FlatButton(
                                  color: Colors.white,
                                  child: Text(
                                    'Payment',
                                    style: GoogleFonts.roboto(color: Colors.purple,fontSize: 15),
                                  ),
                                  onPressed: null,
                                ),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.height * 0.01),
                              
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.007,bottom: MediaQuery.of(context).size.height * 0.017),
                          child: Row(
                            children: [
                              Container(
                                      height: MediaQuery.of(context).size.height * 0.040,
                                      child: RaisedButton(
                                        color: Colors.purple,
                                        child: Text(
                                          'Accept ',
                                          style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),
                                        ),
                                        onPressed: (){},
                                      ),
                                    ),
                              SizedBox(width: MediaQuery.of(context).size.height * 0.01),
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.040,
                                  child: RaisedButton(
                                    color: Colors.purple,
                                    child: Text(
                                      'Reject ',
                                      style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),
                                    ),
                                    onPressed: (){},
                                  ),
                                ),
                            ],
                          ),
                        ),
                              
                      ],
                    ),
                  ),
                  
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PBFShivam()));
                  },
                ),
              ),
            ),
            
            
        ],
      ),
    );
  }
}*/

