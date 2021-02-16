import 'package:farmer/abccentermain/sellcroprequest/sellcrop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ASCDetailPage extends StatelessWidget {
  
  static const routeName = '/abcsellcrop-detail';


  @override
  Widget build(BuildContext context) {

    final ascdId = ModalRoute.of(context).settings.arguments as String;
    final loadedAsc = Provider.of<Abcsellcrops>(context).findbyId(ascdId);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0,0,87,1),
        elevation: 0,
        title: Text(loadedAsc.name,style: GoogleFonts.openSans(),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top:0.0,right: 25),
            child: Row(
              children: [
                Icon(Icons.star_rounded,size: 19,color: Colors.yellow[800],),
                SizedBox(width: 4,),
                Text(loadedAsc.rating, style: GoogleFonts.openSans(color: Colors.white),),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Color.fromRGBO(0,0,87,1),
      body: SingleChildScrollView(
        child: Stack(
          //fit: StackFit.expand,
          children: [
          Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.height * -0.090,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.180,
                          width: MediaQuery.of(context).size.height * 0.400,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.lightGreen[800]),
                            image: DecorationImage(
                              image: AssetImage(loadedAsc.imgUrl),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                //height: MediaQuery.of(context).size.height * 1.000,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.018),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Time Is Precious Waste It Wisely...!',
                          style: GoogleFonts.openSans(color: Colors.black87,fontSize: MediaQuery.of(context).size.height * 0.02,letterSpacing: 1.0),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.orange[50],
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'About',
                              style: GoogleFonts.openSans(fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 1,color: Color.fromRGBO(0,0,87,1)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Name',
                            style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.name,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Mobile Number',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.phoneno,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Mail ID',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.email,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Growing',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.growing,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Growing Since',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.since,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Address',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.address,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),
                      

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Pincode',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.pincode,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'State',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.state,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Acres of Land ',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.landAcre,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Income Per Year',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.income,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      //crop join show here
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Crops Joined',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.cropjoin,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      //crop sell show here
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Crop Want To Sell',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedAsc.cropsell,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
          ],
        ),
      ),
      
    );
  }
}