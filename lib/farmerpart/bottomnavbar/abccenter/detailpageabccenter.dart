import 'package:farmer/farmerpart/bottomnavbar/abccenter/center.dart';
import 'package:farmer/farmerpart/bottomnavbar/abccenter/listoffarmersforcenter/fcenterlist.dart';
import 'package:farmer/farmerpart/drawerscreen/profile/profileshow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CntDetailPage extends StatefulWidget {

  static const routeName = '/center-detail';

  @override
  _CntDetailPageState createState() => _CntDetailPageState();
}

class _CntDetailPageState extends State<CntDetailPage> {
  @override
  void showModalSheet (){
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.020 * MediaQuery.of(context).size.height), 
          topRight: Radius.circular(0.020 * MediaQuery.of(context).size.height),                                       
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (builder) { 
        return SingleChildScrollView(
          child: Stack(
              overflow: Overflow.visible,
              children: [

              //bottomsheet items
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                             
                      //text
                      Padding(
                        padding: EdgeInsets.only(top: 0.030 * MediaQuery.of(context).size.height, left: 0.016 * MediaQuery.of(context).size.height, right: 0.014 * MediaQuery.of(context).size.height,),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 0.056 * MediaQuery.of(context).size.height,
                            width: double.infinity,
                              child: Text(
                                'Edit Or Check Your Profile \nBefore Applying', 
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 0.00124 * MediaQuery.of(context).size.height,
                                ),
                              ),
                          ),
                        ),        

//flatbutton
                        Padding(
                          padding: EdgeInsets.only(top: 0.016 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                          child: FlatButton(
                            color: Colors.deepPurple[700],//: Color.fromRGBO(158,158,158,1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                            ),
                            height: 0.041 * MediaQuery.of(context).size.height,
                            minWidth: double.infinity,
                            child: Text(
                              'Go To Profile',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16 ,
                                color: Color.fromRGBO(255,255,255,1),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                            },
                          ),
                        ),


                         //bottom text
                         
                    ],
                  ),
                ),
              ),
                
             
              ],
            ),
        );
      });
  }

  @override
  Widget build(BuildContext context) {

    final centerId = ModalRoute.of(context).settings.arguments as String;
    final loadedCenter = Provider.of<Centers>(context).findbyId(centerId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        elevation: 0,
        title: Text(loadedCenter.location,style: GoogleFonts.openSans(),),
        /*actions: [
          Padding(
            padding: const EdgeInsets.only(top:0.0,right: 25),
            child: Row(
              children: [
                Icon(Icons.star,size: 18,),
                SizedBox(width: 4,),
                Text(loadedScbuyer.rating, style: GoogleFonts.openSans(color: Colors.white),),
              ],
            ),
          )
        ],*/
      ),
      backgroundColor: Colors.purple[900],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 80.0),
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
                        width: MediaQuery.of(context).size.height * 0.500,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.purple[800]),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(loadedCenter.img),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 1.200,
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
                        loadedCenter.bio,
                        style: GoogleFonts.openSans(color: Colors.black87,fontSize: MediaQuery.of(context).size.height * 0.02,letterSpacing: 1.0),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.purple[50],
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'About',
                            style: GoogleFonts.openSans(fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 1,color: Colors.purple[900]),
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
                          'Owner',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedCenter.pname,
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
                        'Center Code',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedCenter.centercode,
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
                        loadedCenter.phone,
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
                        loadedCenter.mail,
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
                        loadedCenter.address,
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
                        'Open Since',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedCenter.since,
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

                    /*Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 12),
                      child: Text(
                        'From',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedScbuyer.place,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),*/

                    /*Padding(
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
                        loadedScbuyer.landAcre,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),*/

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                            blurRadius: 2,
                            color: Colors.purple,
                          )]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'See List Of Farmer Members',
                                style: GoogleFonts.openSans(fontSize: 18),
                              ),
                              SizedBox(width: 5,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FlatButton(
                                  color: Colors.purple[400],
                                  onPressed: () {  
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerJCenter()));
                                  },
                                  child: Text(
                                    'View',
                                    style: GoogleFonts.openSans(fontSize: 16,color: Colors.white),
                                  ),
                                ),
                              ),
                              Text(
                                'OR',
                                style: GoogleFonts.openSans(fontSize: 18),
                              ),
                              SizedBox(width: 5,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FlatButton(
                                  color: Colors.purple[400],
                                  onPressed: showModalSheet,
                                  child: Text(
                                    'Apply For Membership',
                                    style: GoogleFonts.openSans(fontSize: 16,color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
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


