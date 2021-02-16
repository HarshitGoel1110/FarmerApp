
import 'package:farmer/farmerpart/drawerscreen/article/artitem.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'artdetail.dart';
import 'articlecard.dart';

class ArticleHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  final articleData = Provider.of<Articles>(context);
  final arts = articleData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Articles',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: arts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 0.00074 * MediaQuery.of(context).size.height),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: arts[i],
      child: ArtItem(
        title: arts[i].title,
        imgUrl: arts[i].imgUrl,
        description: arts[i].description,
        //price: trds[i].price,
      ),
      ),
    ),
    );
  }
}



