
import 'package:farmer/farmerpart/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_body.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Things',style: GoogleFonts.openSans(),),
        backgroundColor: Colors.green[900],
        automaticallyImplyLeading: false,
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
      body: MainBody()
    );
  }
}