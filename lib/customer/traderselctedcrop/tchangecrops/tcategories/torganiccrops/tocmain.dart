import 'package:farmer/customer/traderselctedcrop/tchangecrops/tcategories/torganiccrops/torganic.dart';
import 'package:farmer/customer/traderselctedcrop/tchangecrops/tcategories/torganiccrops/torgitem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TOrganicCropMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final torganicData = Provider.of<Torganics>(context);
    final torgs = torganicData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Organic Crops',style: GoogleFonts.openSans(),),
        backgroundColor: Colors.cyan[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: torgs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: torgs[i],
      child: TOrgItem(
        name: torgs[i].name,imgUrl: torgs[i].imgUrl,
        ),
      ),
    ),
    );
  }
}