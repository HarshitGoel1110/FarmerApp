
import 'package:farmer/farmerpart/bottomnavbar/abccenter/listoffarmersforcenter/fcenterlist.dart';
import 'package:farmer/farmerpart/bottomnavbar/abccentmember/sellcrop.dart';
import 'package:farmer/farmerpart/bottomnavbar/abccentmember/trjcenter/trjcenterlist.dart';
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/mainfarmerjoinedcrops/scbuyerlist/buyerlist.dart';
import 'package:farmer/farmerpart/drawerscreen/otherhelp/loan/loanhome.dart';
import 'package:farmer/farmerpart/drawerscreen/otherhelp/transportation/transhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ABCMHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABC Center',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600),),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(0,0,87,1),
              height: MediaQuery.of(context).size.height * 0.21,
              width: double.infinity,
              child: Stack(
                overflow: Overflow.visible,
                children: [

                  //sell Crop
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                    child: Text(
                      'Sell Crop',
                      style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.100,
                    left: MediaQuery.of(context).size.height * 0.02,
                    child: FlatButton(
                      color: Colors.lightGreen[400],
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SellCrop()));
                      },
                      child: Text('Let\'s Go'),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.020,
                    left: MediaQuery.of(context).size.height * 0.240,
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                      height: MediaQuery.of(context).size.height * 0.17,
                      child: Image.asset('assets/images/sellcrop.gif')
                    ),
                  ),
                ],
              ),
            ),

            //partnership
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.21,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Partnership \nFarming',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.130,
                      left: MediaQuery.of(context).size.height * 0.02,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoanHome()));
                        },
                        child: Text('Request For Call'),
                      ),
                    ),
                    
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.020,
                      left: MediaQuery.of(context).size.height * 0.240,
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                        height: MediaQuery.of(context).size.height * 0.17,
                        child: Image.asset('assets/images/handshake.gif')
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Cash Loan
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.21,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Cash Loan /\n Insurance',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.130,
                      left: MediaQuery.of(context).size.height * 0.02,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoanHome()));
                        },
                        child: Text('Let\'s Go'),
                      ),
                    ),
                    
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.020,
                      left: MediaQuery.of(context).size.height * 0.240,
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                        height: MediaQuery.of(context).size.height * 0.17,
                        child: Image.asset('assets/images/loan.gif')
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //transportation
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.21,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Transport \nYour Crops',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.130,
                      left: MediaQuery.of(context).size.height * 0.02,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransHome()));
                        },
                        child: Text('Let\'s Go'),
                      ),
                    ),
                    
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.020,
                      left: MediaQuery.of(context).size.height * 0.240,
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                        height: MediaQuery.of(context).size.height * 0.17,
                        child: Image.asset('assets/images/transportation.gif')
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //List of Buyer Joined ABC
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.15,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'List Of \nTrader Members',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.height * 0.32,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrjcHome()));
                        },
                        child: Text('View'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //List of Farmer Joined ABC
            Padding(
              padding: const EdgeInsets.only(top: 28.0,bottom: 20),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.15,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'List Of \nFarmer Members',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.height * 0.32,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerJCenter()));
                        },
                        child: Text('View'),
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
