
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'tcrops.dart';
import 'tcrpitem.dart';



class TAllCrops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final trallcropData = Provider.of<Trallcrops>(context);
    final tacs = trallcropData.items;

    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: tacs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: tacs[i],
      child: TacItem(name: tacs[i].name,imageUrl: tacs[i].imgUrl,),
      ),
    );
  }
}