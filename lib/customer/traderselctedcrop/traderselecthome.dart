import 'package:farmer/customer/bottomnav.dart';
import 'package:farmer/customer/drawer/profile/trprofile.dart';
import 'package:farmer/customer/drawer/purchasingbill/pbmain.dart';
import 'package:farmer/customer/traderselctedcrop/tchangecrops/ccmain.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../logsign.dart';
import 'farmerlist/hometsfarmerlist.dart';

class TraderSelectCropHome extends StatefulWidget {
  @override
  _TraderSelectCropHomeState createState() => _TraderSelectCropHomeState();
}

class _TraderSelectCropHomeState extends State<TraderSelectCropHome> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trader App'),
        backgroundColor: Colors.cyan[800],
        actions: [
          Container(
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TChangeCrop()));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.003),
                    child: Text(
                      'Edit',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.7,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.0001),
                    child: Icon(Icons.edit_rounded,color: Colors.white,size: 20,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              child: DrawerHeader(
                child: Column(
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 170.0,top: 1),
                       child: Container(
                         alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width/2,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/p1.jpg'),
                    ),
                  ),
                ),
                     ),
                      Padding(
                        padding: const EdgeInsets.only(right: 154.0,top: 15),
                        child: Text(
                          'Pratik Patel',
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140.0,top: 1),
                        child: Text(
                          'xyz@gmail.com',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                decoration: BoxDecoration(
                  color: Colors.cyan[800],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.person_rounded,size: 25,),
                  title: Text('Profile',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderProfileScreen()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.pages_outlined,size: 25,),
                  title: Text('Purchasing Bill',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PBHome()));
                  },
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.logout,size: 25,),
                  title: Text('LogOut',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Firstpage()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .35,
            width: double.infinity,//here the height of the container is 45% of our total height
            decoration: BoxDecoration(
              color: Colors.lightGreen[500],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/fs1.jpg'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top :MediaQuery.of(context).size.height*0.1,bottom: MediaQuery.of(context).size.height*0.1),
                      child: Text(
                        "Selected \nCrops",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 3.2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Cotton",
                          title1: 'Organic Crop',
                          image: "assets/images/cotton.jpg",
                          press: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TSFarmerHome()));
                          },
                        ),
                        CategoryCard(
                          title: "Lime",
                          title1: 'Traditional Crop',
                          image: "assets/images/lime.jpg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Cotton",
                          title1: 'Organic Crop',
                          image: "assets/images/cotton.jpg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Lime",
                          title1: 'Traditional Crop',
                          image: "assets/images/lime.jpg",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      //bottomNavigationBar: TBottomNavBar(),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final Function press;
  final String title1;
  
  const CategoryCard({
    Key key, 
    this.title, this.image, this.press, this.title1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
          child: Padding(
            padding: EdgeInsets.only(bottom: 0.01 * MediaQuery.of(context).size.height),
            child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
              colors: <Color>[
                Colors.lightBlue[200],
                Colors.green,
              ],
            ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0.0),bottomRight: Radius.circular(50.0),topLeft: Radius.circular(50.0),topRight: Radius.circular(0.0)),
        ),
        child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top :7.0),
                          child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                        title1,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(fontSize: 14,color: Colors.black38,fontWeight: FontWeight.w400),
                    ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                      image,
                      height: 120,
                      width: 200,
                  ),
                ],
            ),
              ),
                  ),
        ),
      ),
          ),
    );
  }
}