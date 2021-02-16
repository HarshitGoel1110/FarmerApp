
import 'package:farmer/farmerpart/bottomnavbar/shopping/categories/subcategories.dart/trendingitems/hometr.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'subcategories.dart/machine/homemachine.dart';
import 'subcategories.dart/seeds/homeseed.dart';

class Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.15,
      height: 1000,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        children: [
          CategoryCard(
            id: '1',
            name: 'Machine',
            icon: Icons.agriculture,
            page: HomeMachine(),
            image: 'assets/images/shopmachine.jpg',
          ),
          CategoryCard(
            id: '2',
            name: 'Seeds',
            icon: Icons.grain,
            page: HomeSeed(),
            image: 'assets/images/shopseed.jpg',
          ),
          CategoryCard(
            id: '3',
            name: 'Trending Items',
            icon: Icons.trending_up,
            page: Hometrending(),
            image: 'assets/images/shoptrending.jpg',
          ),
          CategoryCard(
            id: '4',
            name: 'FarmBook',
            icon: Icons.book,
            image: 'assets/images/shopfarmbook.jpg',
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {

  
  final String name;
  final String id;
  final String image;
  final IconData icon;
  final Widget page;

  const CategoryCard({Key key, this.name, this.page,this.id, this.icon, this.image}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white),//Color.fromRGBO(0,0,87,1),
                width: 120,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 4,color: Color.fromRGBO(0,0,87,1)),],
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(height: MediaQuery.of(context).size.height * 0.105,child: Image.asset(image,fit: BoxFit.contain,)),
                          //Icon(icon,size: 40,color: Colors.white70,),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 3.0,bottom: 3,left: 7,right: 5),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.070,
                              alignment: Alignment.center,
                              child: Text(name,style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w500,color: Colors.black,),)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

/*Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 20,bottom: 20,right: 5),
            child: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(0,0,87,1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0,0.60),
                  ),
                ],
              ),
              width: 100,
              child: InkWell(
                onTap: (){
                  
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.build,size: 40,color: Colors.white70,),
                      ),
                      Text(name,style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white70,),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),*/