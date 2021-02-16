
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/cropjoinform/cropform.dart';
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/listoffarmerjoinedcrop/listfarmerhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'organic.dart';


class OrganicDetailPage extends StatefulWidget {

  static const routeName = '/organic-detail';

  @override
  _OrganicDetailPageState createState() => _OrganicDetailPageState();
}

class _OrganicDetailPageState extends State<OrganicDetailPage> {
  bool visibilityBar = false;

  bool visibilityEnv = false;

  bool visibilityLand = false;

  bool visibilityRevenue = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "Bar"){
        visibilityBar = visibility;
      }
      if (field == "Env"){
        visibilityEnv = visibility;
      }
      if (field == "Land"){
        visibilityLand = visibility;
      }
      if (field == "Revenue"){
        visibilityRevenue = visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    final organicId = ModalRoute.of(context).settings.arguments as String;
    final loadedOrg = Provider.of<Organics>(context).findbyId(organicId);
    //final cart = Provider.of<Cart>(context);
    
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text(loadedOrg.name,style: GoogleFonts.roboto(),),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01,left: MediaQuery.of(context).size.height*0.01,right: MediaQuery.of(context).size.height*0.01),
              child: Container(
                height: MediaQuery.of(context).size.height*0.240,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.purple[50],
                border: Border.all(color: Colors.purple, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset(loadedOrg.imgUrl,fit: BoxFit.fitWidth,),
                  ),
                )
              ),
            ),
            
            Padding(
              padding: EdgeInsets.only(top: 18.0,left: 8.0,right: 8.0,bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2,color: Colors.grey[400]),),
                ),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Basic Information',
                    style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.w600,letterSpacing: 1,color: Colors.green[800]),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(loadedOrg.bdescription,
                style: GoogleFonts.openSans(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 0.5),
              ),
            ),

            InkWell(
              onTap: (){ 
                visibilityBar ? null : _changed(true, "Bar");
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                    )],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Types of ${loadedOrg.name}',style: GoogleFonts.openSans(fontSize: 16,color: Colors.purple[600],fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.arrow_downward,size: 20),
                    ],
                  ),
                ),
              ),
            ),

            visibilityBar ? Container(
              color: Color.fromRGBO(255,255,255,1),
              child: TypesofCrops(),
            ) : Container(),

            InkWell(
              onTap: (){ 
                visibilityEnv ? null : _changed(true, "Env");
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                    )],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Suitable Environment To Grow',style: GoogleFonts.openSans(fontSize: 16,color: Colors.purple[600],fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.arrow_downward,size: 20),
                    ],
                  ),
                ),
              ),
            ),

            visibilityEnv ? Container(
              color: Color.fromRGBO(255,255,255,1),
              child: Env(),
            ) : Container(),

            InkWell(
              onTap: (){ 
                visibilityLand ? null : _changed(true, "Land");
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                    )],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Land Management',style: GoogleFonts.openSans(fontSize: 16,color: Colors.purple[600],fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.arrow_downward,size: 20),
                    ],
                  ),
                ),
              ),
            ),

            visibilityLand ? Container(
              color: Color.fromRGBO(255,255,255,1),
              child: Land(),
            ) : Container(),

            InkWell(
              onTap: (){ 
                visibilityRevenue ? null : _changed(true, "Revenue");
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                    )],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Revenue',style: GoogleFonts.openSans(fontSize: 16,color: Colors.purple[600],fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.arrow_downward,size: 20),
                    ],
                  ),
                ),
              ),
            ),

            visibilityRevenue ? Container(
              color: Color.fromRGBO(255,255,255,1),
              child: Revenue(),
            ) : Container(),


            Padding(
              padding: const EdgeInsets.only(top: 15.0,bottom: 15,left: 15,right:15),
              child: Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  offset: Offset(0,0.40),
                  blurRadius: 5,
                  color: Colors.grey[400],
                )],
              ),
              child: Column(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      'Total Farmers Joined = ${loadedOrg.farmerno}',
                      style: GoogleFonts.openSans(
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      child: FlatButton(
                        color: Colors.purple[600],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerJList()));
                        },
                        child: Text(
                          'See Joined Farmers',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01 ,bottom: 20,left: 15,right:15),
              child: Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  offset: Offset(0,0.40),
                  blurRadius: 5,
                  color: Colors.grey[400],
                )],
              ),
              child: Column(
                children: [
                  
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.018),
                    child: Text(
                      'Are You Intrested In Joining ?',
                      style: GoogleFonts.openSans(
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.008),
                    child: FlatButton(
                      color: Colors.purple[600],
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CropForm()));
                      },
                      child: Text(
                        'Join',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          color: Colors.white
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

          ],
        ),
      ),
    );
  }
}

//dropdown
class TypesofCrops extends StatefulWidget {

  static const routeName = '/organic-detail';

  @override
  _TypesofCropsState createState() => _TypesofCropsState();
}

class _TypesofCropsState extends State<TypesofCrops> {
  @override
  Widget build(BuildContext context) {

    final organicId = ModalRoute.of(context).settings.arguments as String;
    final loadedOrg = Provider.of<Organics>(context).findbyId(organicId);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          border: Border.all(width: 1,color: Colors.green),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            loadedOrg.typedesc,
            style: GoogleFonts.openSans(fontSize: 16),
          ),
        )
      ),
    );
  }
}

class Env extends StatefulWidget {

  static const routeName = '/organic-detail';
  
  @override
  _EnvState createState() => _EnvState();
}

class _EnvState extends State<Env> {
  @override
  Widget build(BuildContext context) {

    final organicId = ModalRoute.of(context).settings.arguments as String;
    final loadedOrg = Provider.of<Organics>(context).findbyId(organicId);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          border: Border.all(width: 1,color: Colors.green),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            loadedOrg.environment,
            style: GoogleFonts.openSans(fontSize: 16),
          ),
        )
      ),
    );
  }
}


class Land extends StatefulWidget {

  static const routeName = '/organic-detail';

  @override
  _LandState createState() => _LandState();
}

class _LandState extends State<Land> {
  
  @override
  Widget build(BuildContext context) {

    final organicId = ModalRoute.of(context).settings.arguments as String;
    final loadedOrg = Provider.of<Organics>(context).findbyId(organicId);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          border: Border.all(width: 1,color: Colors.green),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            loadedOrg.landdesc,
            style: GoogleFonts.openSans(fontSize: 16),
          ),
        )
      ),
    );
  }
}

class Revenue extends StatefulWidget {

  static const routeName = '/organic-detail';

  @override
  _RevenueState createState() => _RevenueState();
}

class _RevenueState extends State<Revenue> {
  @override
  Widget build(BuildContext context) {

    final organicId = ModalRoute.of(context).settings.arguments as String;
    final loadedOrg = Provider.of<Organics>(context).findbyId(organicId);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          border: Border.all(width: 1,color: Colors.green),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            loadedOrg.revenuedesc,
            style: GoogleFonts.openSans(fontSize: 16),
          ),
        )
      ),
    );
  }
}