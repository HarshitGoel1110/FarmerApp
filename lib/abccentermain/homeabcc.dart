import 'package:farmer/abccentermain/farmersrequest/frhome.dart';
import 'package:farmer/abccentermain/loaninsurance/lihome.dart';
import 'package:farmer/abccentermain/partnershipfarming/pfhome.dart';
import 'package:farmer/abccentermain/sellcroprequest/aschome.dart';
import 'package:farmer/abccentermain/transportation/transhome.dart';
import 'package:farmer/abccentermain/trdrequest/trdhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ABCProfile/abcprofile.dart';
import 'buycroprequest/abchome.dart';

class ABCHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABC Center Request',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.1),),
        backgroundColor: Colors.orange[600],
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              icon: Icon(Icons.person_add,size: 35,color: Color.fromRGBO(0,0,87,1),), 
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ABCProfile()));
              },
            ),
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //sell
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(color: Colors.lightGreen[300]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sell Crops',style: GoogleFonts.openSans(color: Color.fromRGBO(0,0,87,1),fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                            Text('New Request = 4',style: GoogleFonts.roboto(color: Colors.deepOrange[900],fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //buy
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(color: Colors.lightGreen[300]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Buy Crops',style: GoogleFonts.openSans(color: Color.fromRGBO(0,0,87,1),fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                            Text('New Request = 9',style: GoogleFonts.roboto(color: Colors.deepOrange[900],fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //patnership
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(color: Colors.lightGreen[300]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Partnership Farming',style: GoogleFonts.openSans(color: Color.fromRGBO(0,0,87,1),fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                            Text('New Request = 1',style: GoogleFonts.roboto(color: Colors.deepOrange[900],fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  //loan / insurance
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(color: Colors.lightGreen[300]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Loan/Insurance',style: GoogleFonts.openSans(color: Color.fromRGBO(0,0,87,1),fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                            Text('New Request = 11',style: GoogleFonts.roboto(color: Colors.deepOrange[900],fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Transportation
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(color: Colors.lightGreen[300]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Transportation',style: GoogleFonts.openSans(color: Color.fromRGBO(0,0,87,1),fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                            Text('New Request = 15',style: GoogleFonts.roboto(color: Colors.deepOrange[900],fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Traders
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(color: Colors.lightGreen[300]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Traders',style: GoogleFonts.openSans(color: Color.fromRGBO(0,0,87,1),fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                            Text('New Request = 7',style: GoogleFonts.roboto(color: Colors.deepOrange[900],fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Farmers
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(color: Colors.lightGreen[300]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Farmers',style: GoogleFonts.openSans(color: Color.fromRGBO(0,0,87,1),fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                            Text('New Request = 4',style: GoogleFonts.roboto(color: Colors.deepOrange[900],fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            //sell crop
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For \n Sell Crops',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ASCHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //sell crop
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For\n Buy Crops',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => AbBCHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //partnership
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For \nPartnership \nFarming',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PFHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Cash Loan
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For \nLoan /\nInsurance',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LIHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //transportation
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For \nTransportation',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.07,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //List of Buyer Joined ABC
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request Of \nTraders',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.12,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrdRHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //List of Farmer Joined ABC
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10,bottom:15),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request Of \nFarmers',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.12,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FRHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
