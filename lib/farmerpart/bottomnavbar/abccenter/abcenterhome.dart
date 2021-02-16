import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'center.dart';
import 'centeritem.dart';
import 'detailpageabccenter.dart';

class ABCCenterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final centrData = Provider.of<Centers>(context);
    final cnts = centrData.items;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('List Of Near By ABC Center',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600),),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        physics: ScrollPhysics(),
        itemCount: cnts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: MediaQuery.of(context).size.height * 0.00197),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(value: cnts[i],
          child: CenterList(
            title: cnts[i].title,
            img: cnts[i].img,
            location: cnts[i].location,
            address: cnts[i].address,
            phone: cnts[i].phone,
            pname: cnts[i].pname,
            since: cnts[i].since,
            mail: cnts[i].mail,
            bio: cnts[i].bio,
            fjoined: cnts[i].fjoined,
            centercode: cnts[i].centercode,
            centercompany: cnts[i].centercompany,
          ),
        ),
      ),
    );
  }
}

