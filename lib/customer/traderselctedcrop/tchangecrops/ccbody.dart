
import 'package:farmer/customer/traderselctedcrop/tchangecrops/tcategories/torganiccrops/tocmain.dart';
import 'package:farmer/customer/traderselctedcrop/tchangecrops/tcategories/ttraditionalcrops/ttrmain.dart';
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/categories/traditionalcrops/trmain.dart';
import 'package:flutter/material.dart';

import 'tallcrops/tallcrops.dart';



class TChangeCropBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top:0.008 * MediaQuery.of(context).size.height, bottom:0.012 * MediaQuery.of(context).size.height),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TOrganicCropMain()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top:0.008 * MediaQuery.of(context).size.height,bottom: 0.008 * MediaQuery.of(context).size.height,right:0.008 * MediaQuery.of(context).size.height,left: 0.014 * MediaQuery.of(context).size.height),
                      child: Container(
                        color: Colors.blueGrey[50],
                        height: 0.2100 * MediaQuery.of(context).size.height,
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.018 * MediaQuery.of(context).size.height,),
                          child: Column(
                            children: [
                              Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.all(0.010 * MediaQuery.of(context).size.height,),
                              width: 0.199 * MediaQuery.of(context).size.height,
                              height: 0.110 * MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54, width: 0.001 * MediaQuery.of(context).size.height,),
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/o.jpg'),
                                ),
                              ),
                            ),
                              Padding(
                                padding: EdgeInsets.all(0.008 * MediaQuery.of(context).size.height,),
                                child: Text(
                                  'Organic \nCrops',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 0.021 * MediaQuery.of(context).size.height,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TTraditionalCropMain()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top:0.008 * MediaQuery.of(context).size.height,bottom: 0.008 * MediaQuery.of(context).size.height,right:0.014 * MediaQuery.of(context).size.height,),
                      child: Container(
                        color: Colors.blueGrey[50],
                        height: 0.2100 * MediaQuery.of(context).size.height,
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.018 * MediaQuery.of(context).size.height,),
                          child: Column(
                            children: [
                              Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.all(0.010 * MediaQuery.of(context).size.height,),
                              width: 0.199 * MediaQuery.of(context).size.height,
                              height: 0.110 * MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54,  width: 0.001 * MediaQuery.of(context).size.height,),
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/t.jpg'),
                                ),
                              ),
                            ),
                              Padding(
                                padding: EdgeInsets.all(0.008 * MediaQuery.of(context).size.height,),
                                child: Text(
                                  'Traditional \nCrops',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 0.021 * MediaQuery.of(context).size.height,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
            padding: EdgeInsets.all(0.008 * MediaQuery.of(context).size.height,),
              child: Center(
                child: Text(
                  'Crops',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Container(
            height: 0.598 * MediaQuery.of(context).size.height,
              child: TAllCrops(),
            ),
          ],
        ),
      ),
    );
  }
}