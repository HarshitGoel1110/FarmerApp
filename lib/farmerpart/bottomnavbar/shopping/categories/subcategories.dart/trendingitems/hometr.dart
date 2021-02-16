
import 'package:farmer/farmerpart/bottomnavbar/shopping/categories/subcategories.dart/trendingitems/trending.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'trdetail.dart';


class Hometrending extends StatefulWidget {
  @override
  _HomeTrendingState createState() => _HomeTrendingState();
}

class _HomeTrendingState extends State<Hometrending> {
  @override
  Widget build(BuildContext context) {

    final trendingData = Provider.of<Trendings>(context);
    final trs = trendingData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trending Items',
          style: GoogleFonts.openSans(letterSpacing: 1.0,fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: trs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: trs[i],
      child: TrendingList(name: trs[i].name,imgUrl: trs[i].imgUrl,price: trs[i].price),
      ),
    ),
    );
  }
}

class TrendingList extends StatelessWidget {

  final String name;
  final String imgUrl;
  final String price;

  TrendingList({
    this.name,
    this.imgUrl, this.price,
  });

  @override
  Widget build(BuildContext context) {

    final tr = Provider.of<Trending>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(TrDetailPage.routeName,arguments: tr.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
            child: Image.asset(imgUrl,fit: BoxFit.cover,),
            footer: GridTileBar(
              title: Text(name,style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 17),),
              trailing: Text('Rs $price',style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),
              /*IconButton(
                icon: Icon(Icons.call),
                onPressed: (){
                  //SHow item added to cart
                  Scaffold.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 3),
                    content: Text('Request For Call Send'),
                  ));
                  //cart.addItem(pdt.id, pdt.name, pdt.price);
                },
              ),*/
              backgroundColor: Color.fromRGBO(0,0,1,0.45)
            ),
          ),
        ),
      );
  }
}

