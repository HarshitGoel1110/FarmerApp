import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'ttraditional.dart';
import 'ttritem.dart';



class TTraditionalCropMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final ttraditionalData = Provider.of<Ttraditionals>(context);
    final ttrds = ttraditionalData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Traditional Crops',style: GoogleFonts.openSans(),),
        backgroundColor: Colors.cyan[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: ttrds.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: ttrds[i],
      child: TTrdItem(
        name: ttrds[i].name,imgUrl: ttrds[i].imgUrl,
        ),
      ),
    ),
    );
  }
}