
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sdetailpage.dart';
import 'seed.dart';

class HomeSeed extends StatefulWidget {
  @override
  _HomeSeedState createState() => _HomeSeedState();
}

class _HomeSeedState extends State<HomeSeed> {
  @override
  Widget build(BuildContext context) {

    final seedData = Provider.of<Seeds>(context);
    final sds = seedData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seeds',
          style: GoogleFonts.openSans(letterSpacing: 1.0,fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: sds.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: sds[i],
      child: SeedList(name: sds[i].name,imgUrl: sds[i].imgUrl,price: sds[i].price),
      ),
    ),
    );
  }
}

class SeedList extends StatelessWidget {

  final String name;
  final String imgUrl;
  final String price;

  SeedList({
    this.name,
    this.imgUrl, this.price,
  });

  @override
  Widget build(BuildContext context) {

    final sd = Provider.of<Seed>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(SdDetailPage.routeName,arguments: sd.id);
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
