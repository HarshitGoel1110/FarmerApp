
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'crops.dart';
import 'crpitem.dart';

class AllCrops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final allcropData = Provider.of<Allcrops>(context);
    final crps = allcropData.items;

    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: crps.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: crps[i],
      child: CrpItem(name: crps[i].name,imageUrl: crps[i].imgUrl,),
      ),
    );
  }
}