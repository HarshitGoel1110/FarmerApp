import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'traditional.dart';
import 'tritem.dart';


class TraditionalCropMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final traditionalData = Provider.of<Traditionals>(context);
    final trds = traditionalData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Organic Crops',style: GoogleFonts.openSans(),),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: trds.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: trds[i],
      child: TrdItem(
        name: trds[i].name,imgUrl: trds[i].imgUrl,
        ),
      ),
    ),
    );
  }
}