
import 'package:flutter/material.dart';

import 'farmvisitProfile/fvprofile.dart';
import 'listoffarmerjoinedcrop/fmmain.dart';

class FarmVisitHome extends StatefulWidget {
  @override
  _FarmVisitHomeState createState() => _FarmVisitHomeState();
}

class _FarmVisitHomeState extends State<FarmVisitHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text('Farm Visit'),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              icon: Icon(Icons.person_add,size: 35,color: Colors.white,), 
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FVProfile()));
              },
            ),
          ),
        ],
      ),
      body: FvFarmerHome(),
    );
  }
}