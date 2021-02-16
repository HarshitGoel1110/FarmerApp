
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'machinecard.dart';
import 'mdetailpage.dart';

class HomeMachine extends StatefulWidget {
  @override
  _HomeMachineState createState() => _HomeMachineState();
}

class _HomeMachineState extends State<HomeMachine> {
  @override
  Widget build(BuildContext context) {

    final machineData = Provider.of<Machines>(context);
    final macs = machineData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Machine',
          style: GoogleFonts.openSans(letterSpacing: 1.0,fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: macs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: macs[i],
      child: MachineList(name: macs[i].name,imgUrl: macs[i].imgUrl,price: macs[i].price),
      ),
    ),
    );
  }
}

class MachineList extends StatelessWidget {

  final String name;
  final String imgUrl;
  final String price;

  MachineList({
    this.name,
    this.imgUrl, 
    this.price,
  });

  @override
  Widget build(BuildContext context) {

    final mac = Provider.of<Machine>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(MacDetailPage.routeName,arguments: mac.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: Colors.black38),
            boxShadow: [BoxShadow(color: Colors.blueGrey[400],)]
          ),
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
      ),
    );
  }
}
