//list of center how it looks

import 'package:farmer/customer/tabccenter/tcenter.dart';
import 'package:farmer/customer/tabccenter/tdetailpageabccenter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TCenterList extends StatelessWidget {
  
  final String id;
  final String location;
  final String address;
  final String img;
  final String phone;
  final String title;
  final String pname;
  final String since;
  final String mail;
  final String bio;
  final String fjoined;
  final String centercode;
  final String centercompany;

  const TCenterList({Key key, this.id, this.centercode, this.location, this.address, this.img, this.phone, this.title, this.pname, this.since, this.mail, this.bio, this.fjoined, this.centercompany}) : super(key: key); //show list of number of how many farmer have joined

  
  
  @override
  Widget build(BuildContext context) {

    final tcnt = Provider.of<Tcentr>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(TCntDetailPage.routeName,arguments: tcnt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            /*image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(img),
            ),*/
            color: Colors.white,
            boxShadow: [BoxShadow(
              blurRadius: 2,
              color: Colors.purple,
            )],
          ),
          child: Column(
            children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.180,
              decoration: BoxDecoration(
                image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(img),
              ),
              color: Colors.white,
              ),
            ),
              Container(color: Colors.white,
                child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0,top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.white54,
                        child: Text(
                          ' $title, $location ',
                          style: GoogleFonts.roboto(fontWeight: FontWeight.w500,color: Colors.purple[900]),
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        color: Colors.white54,
                        child: Text(
                          ' Company - $centercompany ',
                          style: GoogleFonts.roboto(fontSize: 13,color: Colors.purple),
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        color: Colors.white54,
                        child: Text(
                          ' Phone No - $phone ',
                          style: GoogleFonts.roboto(fontSize: 13,color: Colors.purple),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*class CntItem extends StatelessWidget {
  
  final String id;
  final String location;
  final String address;
  final String img;
  final String phone;
  final String title;
  final String pname;
  final String since;
  final String mail;
  final String bio;
  final String fjoined; //show list of number of how many farmer have joined


  CntItem({Key key, this.id, this.location, this.address, this.img, this.title, this.phone, this.pname, this.since, this.mail, this.bio, this.fjoined}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final tcnt = Provider.of<Center>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(CntDetailPage.routeName,arguments: tcnt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(img),
            ),
            color: Colors.white,
            boxShadow: [BoxShadow(
              blurRadius: 2,
              color: Colors.purple,
            )],
          ),
          child: Stack(
            children: [
              ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.white54,
                      child: Text(
                        ' $title, $location ',
                        style: GoogleFonts.roboto(),
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      color: Colors.white54,
                      child: Text(
                        'Phone No - $phone ',
                        style: GoogleFonts.roboto(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}*/
