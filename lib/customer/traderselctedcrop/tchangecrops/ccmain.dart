//change or edit crop main screen
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ccbody.dart';

class TChangeCrop extends StatefulWidget {
  @override
  _TChangeCropState createState() => _TChangeCropState();
}

class _TChangeCropState extends State<TChangeCrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Join or Change Crop',style: GoogleFonts.openSans(),),
        backgroundColor: Colors.cyan[800],
        //automaticallyImplyLeading: false,
        /*actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            iconSize: 28,
            onPressed: (){
              Navigator.pop(context);
              Navigator.push(
                //context, MaterialPageRoute(builder: (context) => CartScreen()));
            },
          ),
        ],*/
      ),
      body: TChangeCropBody()
    );
  }
}