import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'organic.dart';
import 'orgitem.dart';

class OrganicCropMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final organicData = Provider.of<Organics>(context);
    final orgs = organicData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Organic Crops',style: GoogleFonts.openSans(),),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: orgs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: orgs[i],
      child: OrgItem(
        name: orgs[i].name,imgUrl: orgs[i].imgUrl,
        ),
      ),
    ),
    );
  }
}