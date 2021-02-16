
import 'package:farmer/farmerpart/bottomnavbar/shopping/categories/subcategories.dart/trendingitems/trending.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';



class TrDetailPage extends StatelessWidget {

  static const routeName = '/trending-detail';


  @override
  Widget build(BuildContext context) {

    final trendingId = ModalRoute.of(context).settings.arguments as String;
    final loadedTr = Provider.of<Trendings>(context).findbyId(trendingId);
    //final cart = Provider.of<Cart>(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,//Colors.green[900],
        title: Text(loadedTr.name,style: GoogleFonts.openSans(color: Colors.green[900],fontWeight: FontWeight.w600),),
        iconTheme: IconThemeData(color: Colors.green[900]),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(loadedTr.imgUrl,fit: BoxFit.cover)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 11.0,left: 11,top:15),
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: GoogleFonts.openSans(
                            fontSize: 24,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.9,
                          ),
                        ),
                        Text(
                          '${loadedTr.price} Rs',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.15),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.green[900],
                          onPressed: () {  },
                          child: Text('Request For Call',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0,top: 15),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Details',
                  style: GoogleFonts.openSans(
                  fontSize: 24,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w600,
                  letterSpacing: .9,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0,right: 11,top:8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  '${loadedTr.description}',
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    letterSpacing: 1.2
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}