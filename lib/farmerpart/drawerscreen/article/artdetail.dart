
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'articlecard.dart';



class ArtDetailPage extends StatefulWidget {

  static const routeName = '/article-detail';

  @override
  _ArtDetailPageState createState() => _ArtDetailPageState();
}

class _ArtDetailPageState extends State<ArtDetailPage> {
  

  @override
  Widget build(BuildContext context) {

    final articleId = ModalRoute.of(context).settings.arguments as String;
    final loadedArt = Provider.of<Articles>(context).findbyId(articleId);
    //final cart = Provider.of<Cart>(context);
    
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('Article',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          //height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(
              blurRadius: 3,
              offset: Offset(0, 0.72),
              color: Colors.grey,
            )],
          ),
          child: Column(
            children: [

              //title
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text(
                  loadedArt.title,
                  style: GoogleFonts.openSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              //image
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:8,right: 8),
                child: Container(
                  height: 190,
                  width: double.infinity,
                  child: Image.asset(
                    loadedArt.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //text
              Padding(
                padding: const EdgeInsets.only(top: 28.0,left: 20,bottom: 20,right: 20),
                child: Text(
                  loadedArt.description,
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}