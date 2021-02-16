import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Ttraditional with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String bdescription;
  final String imgUrl;
  final double traderno;//farmer joined in particular crop
  final String typedesc;
  final String environment;
  final String landdesc;
  final String revenuedesc;

  Ttraditional({
    @required this.id, 
    this.category, 
    @required this.name, 
    @required this.bdescription, 
    @required this.imgUrl, 
    @required this.traderno,
    this.typedesc,
    this.environment,
    this.landdesc,
    this.revenuedesc,

  });
}

class Ttraditionals with ChangeNotifier{
  List<Ttraditional> _items =[
    Ttraditional(
      id: '1', 
      category: 'Organic', 
      name: 'Coffee', 
      bdescription: 'The modern combine harvester, or simply combine, is a versatile machine designed to efficiently harvest a variety of grain crops. The name derives from its combining four separate harvesting operations—reaping, threshing, gathering and winnowing—into a single process. Among the crops harvested with a combine are wheat, rice, oats, rye, barley, corn (maize), sorghum, soybeans, flax (linseed), sunflowers and canola.',
      imgUrl: 'assets/images/oc.jpg', 
      traderno: 20,
      environment: 'Cotton is a plant that needs a long frost-free period, a lot of heat and plenty of sunshine. \n\nIt prefers warm and humid climate. Cotton seeds will have a small germination rate, \nif the soil temperature is below 60°F (15°C). During active growth, the ideal air temperature is 70 to 100°F (21-37°C).',
      landdesc: 'The depth of the soil should be around one meter or more and there should be no impenetrable layers otherwise there would be no proper root development resulting in poor yield. \n\nThe soil for cotton cultivation should not be alkaline or saline and also should not have drainage issues. \n\npH of the soil is not considered very important, but 5.5 to 7.5 pH scale is considered best for cotton. \n\nAluminum concentration in the soil is harmful for cotton cultivation. Other soil types which are suitable for cotton are red, light red, ashy and brackish soil.',
      revenuedesc: 'Assumptions of Cotton Cultivation Project Report :\n-  Cost of cotton seeds: Rs 740 per 450 g.\n-  The charge of labor: Rs 300 per man-day.\n-  Cost of animal labor: Rs 250 per pair.\n-  Cost of machine power: Rs 600 per hour.\n-  Cost of manure per kg: Rs 15.\n-  Cost of fertilizers per kg: Rs 100.\n\nSale Price :\n-  Sale price of cotton per kg: Rs 160.',
      typedesc: 'There are four commercially grown species of cotton, all domesticated in antiquity:\n\nGossypium hirsutum – upland cotton, native to Central America, Mexico, the Caribbean and southern Florida (90% of world production)\n\nGossypium barbadense – known as extra-long staple cotton, native to tropical South America (8% of world production)\n\nGossypium arboreum – tree cotton, native to India and Pakistan (less than 2%)\n\nGossypium herbaceum – Levant cotton, native to southern Africa and the Arabian Peninsula (less than 2%)',
    ),
    Ttraditional(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      bdescription: 'Cotton is a soft, fluffy staple fiber that grows in a boll, or protective case, around the seeds of the cotton plants of the genus Gossypium in the mallow family Malvaceae. The fiber is almost pure cellulose. Under natural conditions, the cotton bolls will increase the dispersal of the seeds.',
      imgUrl: 'assets/images/almond.jpg', 
      traderno: 11,
      environment: 'Cotton is a plant that needs a long frost-free period, a lot of heat and plenty of sunshine. \n\nIt prefers warm and humid climate. Cotton seeds will have a small germination rate, \nif the soil temperature is below 60°F (15°C). During active growth, the ideal air temperature is 70 to 100°F (21-37°C).',
      landdesc: 'The depth of the soil should be around one meter or more and there should be no impenetrable layers otherwise there would be no proper root development resulting in poor yield. \n\nThe soil for cotton cultivation should not be alkaline or saline and also should not have drainage issues. \n\npH of the soil is not considered very important, but 5.5 to 7.5 pH scale is considered best for cotton. \n\nAluminum concentration in the soil is harmful for cotton cultivation. Other soil types which are suitable for cotton are red, light red, ashy and brackish soil.',
      revenuedesc: 'Assumptions of Cotton Cultivation Project Report :\n-  Cost of cotton seeds: Rs 740 per 450 g.\n-  The charge of labor: Rs 300 per man-day.\n-  Cost of animal labor: Rs 250 per pair.\n-  Cost of machine power: Rs 600 per hour.\n-  Cost of manure per kg: Rs 15.\n-  Cost of fertilizers per kg: Rs 100.\n\nSale Price :\n-  Sale price of cotton per kg: Rs 160.',
      typedesc: 'There are four commercially grown species of cotton, all domesticated in antiquity:\n\nGossypium hirsutum – upland cotton, native to Central America, Mexico, the Caribbean and southern Florida (90% of world production)\n\nGossypium barbadense – known as extra-long staple cotton, native to tropical South America (8% of world production)\n\nGossypium arboreum – tree cotton, native to India and Pakistan (less than 2%)\n\nGossypium herbaceum – Levant cotton, native to southern Africa and the Arabian Peninsula (less than 2%)',
    
    ),
    Ttraditional(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      bdescription: 'Cotton is a soft, fluffy staple fiber that grows in a boll, or protective case, around the seeds of the cotton plants of the genus Gossypium in the mallow family Malvaceae. The fiber is almost pure cellulose. Under natural conditions, the cotton bolls will increase the dispersal of the seeds.',
      imgUrl: 'assets/images/cotton.jpg', 
      traderno: 150,
      environment: 'Cotton is a plant that needs a long frost-free period, a lot of heat and plenty of sunshine. \n\nIt prefers warm and humid climate. Cotton seeds will have a small germination rate, \nif the soil temperature is below 60°F (15°C). During active growth, the ideal air temperature is 70 to 100°F (21-37°C).',
      landdesc: 'The depth of the soil should be around one meter or more and there should be no impenetrable layers otherwise there would be no proper root development resulting in poor yield. \n\nThe soil for cotton cultivation should not be alkaline or saline and also should not have drainage issues. \n\npH of the soil is not considered very important, but 5.5 to 7.5 pH scale is considered best for cotton. \n\nAluminum concentration in the soil is harmful for cotton cultivation. Other soil types which are suitable for cotton are red, light red, ashy and brackish soil.',
      revenuedesc: 'Assumptions of Cotton Cultivation Project Report :\n-  Cost of cotton seeds: Rs 740 per 450 g.\n-  The charge of labor: Rs 300 per man-day.\n-  Cost of animal labor: Rs 250 per pair.\n-  Cost of machine power: Rs 600 per hour.\n-  Cost of manure per kg: Rs 15.\n-  Cost of fertilizers per kg: Rs 100.\n\nSale Price :\n-  Sale price of cotton per kg: Rs 160.',
      typedesc: 'There are four commercially grown species of cotton, all domesticated in antiquity:\n\nGossypium hirsutum – upland cotton, native to Central America, Mexico, the Caribbean and southern Florida (90% of world production)\n\nGossypium barbadense – known as extra-long staple cotton, native to tropical South America (8% of world production)\n\nGossypium arboreum – tree cotton, native to India and Pakistan (less than 2%)\n\nGossypium herbaceum – Levant cotton, native to southern Africa and the Arabian Peninsula (less than 2%)',
    
    ),
    
  ];

  List<Ttraditional>get items {
    return[..._items];
  }

  Ttraditional findbyId(String id){
    return _items.firstWhere((ttrd) => ttrd.id == id);
  }
}