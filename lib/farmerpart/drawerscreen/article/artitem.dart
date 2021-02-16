import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'artdetail.dart';
import 'articlecard.dart';

class ArtItem extends StatelessWidget {

  final String title;
  final String imgUrl;
  final String description;

  const ArtItem({Key key, this.title, this.imgUrl, this.description}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final art = Provider.of<Article>(context);

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        //height: 0.600  * MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          //border: Border.all(),
          color: Colors.white,
          boxShadow: [BoxShadow(
            blurRadius: 3,
            offset: Offset(0, 0.6),
            color: Colors.purple,
          )],
        ),
        child: Column(
          children: [

            //title
            Padding(
              padding: const EdgeInsets.only(top: 28.0,bottom: 14),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            //image
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Container(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  imgUrl,
                ),
              ),
            ),

            //text
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 28.0,left: 10,right: 10,bottom: 18.0,),
                child: Text(
                  description,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24.0,),
              child: Divider(
                color: Colors.grey,
                height: 1,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                color: Colors.purple,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ArtDetailPage.routeName,arguments: art.id);
                  },
                  child: Text(
                    'Continue Reading',
                    style: GoogleFonts.poppins(color: Colors.white),
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

