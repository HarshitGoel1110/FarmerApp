
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'categories/category.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Container(
    
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "Categories",
                  style: GoogleFonts.openSans(fontSize: 30,fontWeight: FontWeight.w500,letterSpacing: 1.2,color: Colors.green[800],),textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Category(),
          /*Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Products",
                style: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w500,letterSpacing: 1.2),textAlign: TextAlign.center,),
            ),
          ),
          //AllProducts(),*/
        ],
      );
  }
}