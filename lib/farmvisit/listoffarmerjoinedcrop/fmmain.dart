import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cardlistfarmer.dart';
import 'fm.dart';

class FvFarmerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fvfarmerData = Provider.of<Fvfarmers>(context);
    final fvfs = fvfarmerData.items;

    return Scaffold(
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: fvfs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: MediaQuery.of(context).size.height * 0.00295),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: fvfs[i],
      child: FarmVisitItem(
        name: fvfs[i].name,
        address: fvfs[i].address,
        image: fvfs[i].image,
        growing: fvfs[i].growing,
        phoneno: fvfs[i].phoneno,
        //page: fvfs[i].page,
        since: fvfs[i].since,
        rating: fvfs[i].rating,
        email: fvfs[i].email,
        //price: trds[i].price,
      ),
      ),
    ),
    );
  }
}