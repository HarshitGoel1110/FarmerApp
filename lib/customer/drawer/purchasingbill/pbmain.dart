import 'package:farmer/customer/drawer/purchasingbill/pbf.dart';
import 'package:farmer/customer/drawer/purchasingbill/purchasingbill.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PBHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pbfarmerData = Provider.of<Pbfarmers>(context);
    final pbfs = pbfarmerData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Farmers List'),
        backgroundColor: Colors.cyan[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: pbfs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: MediaQuery.of(context).size.height * 0.00255),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: pbfs[i],
      child: PbFarmerList(
        name: pbfs[i].name,
        place: pbfs[i].place,
        imgUrl: pbfs[i].imgUrl,
        buyed: pbfs[i].buyed,
        phoneno: pbfs[i].phoneno,
        //page: pbfs[i].page,
        since: pbfs[i].since,
        rating: pbfs[i].rating,
        email: pbfs[i].email,
        //price: trds[i].price,
      ),
      ),
    ),
    );
  }
}