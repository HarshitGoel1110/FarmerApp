
import 'package:farmer/abccentermain/farmersrequest/frdetailpage.dart';
import 'package:farmer/abccentermain/farmersrequest/frequest.dart';
import 'package:farmer/abccentermain/transportation/transequest.dart';
import 'package:farmer/customer/drawer/purchasingbill/pbf.dart';
import 'package:farmer/customer/traderselctedcrop/farmerlist/tsfarmers.dart';
import 'package:farmer/customer/traderselctedcrop/tchangecrops/tallcrops/tcrops.dart';
import 'package:farmer/customer/traderselctedcrop/tchangecrops/tcategories/torganiccrops/torganic.dart';
import 'package:farmer/customer/traderselctedcrop/tchangecrops/tcategories/ttraditionalcrops/ttraditional.dart';
import 'package:farmer/farmerpart/bottomnavbar/abccenter/center.dart';
import 'package:farmer/farmerpart/bottomnavbar/abccenter/detailpageabccenter.dart';
import 'package:farmer/farmerpart/bottomnavbar/abccenter/listoffarmersforcenter/fcntdetailpage.dart';
import 'package:farmer/farmerpart/bottomnavbar/abccentmember/trjcenter/trjcenter.dart';
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/allcrops/crpdetail.dart';
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/categories/organiccrops/ocdetail.dart';
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/categories/traditionalcrops/trdetail.dart';
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/listoffarmerjoinedcrop/detailpage.dart';
import 'package:farmer/farmerpart/bottomnavbar/shopping/categories/subcategories.dart/seeds/sdetailpage.dart';
import 'package:farmer/farmerpart/drawerscreen/article/artdetail.dart';
import 'package:farmer/farmvisit/listoffarmerjoinedcrop/fm.dart';
import 'package:farmer/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'abccentermain/buycroprequest/abcdetailpage.dart';
import 'abccentermain/buycroprequest/buycrop.dart';
import 'abccentermain/loaninsurance/lidetailpage.dart';
import 'abccentermain/loaninsurance/lirequest.dart';
import 'abccentermain/partnershipfarming/pfdetailpage.dart';
import 'abccentermain/partnershipfarming/pfequest.dart';
import 'abccentermain/sellcroprequest/ascdetailpage.dart';
import 'abccentermain/sellcroprequest/sellcrop.dart';
import 'abccentermain/transportation/transdetailpage.dart';
import 'abccentermain/trdrequest/trdrdetailpage.dart';
import 'abccentermain/trdrequest/trdrequest.dart';
import 'customer/bottomnav.dart';
import 'customer/drawer/purchasingbill/pbfdetail.dart';
import 'customer/tabccenter/listoftraders/tcenter.dart';
import 'customer/tabccenter/listoftraders/tcntdetailpage.dart';
import 'customer/tabccenter/tcenter.dart';
import 'customer/tabccenter/tdetailpageabccenter.dart';
import 'customer/tabccentermember/farmmcenter/fmcenter.dart';
import 'customer/tabccentermember/farmmcenter/fmcntdetailpage.dart';
import 'customer/traderselctedcrop/farmerlist/detailtsfarmer.dart';
import 'customer/traderselctedcrop/tchangecrops/farmerjoint/fjt.dart';
import 'customer/traderselctedcrop/tchangecrops/farmerjoint/fjtdetailpage.dart';
import 'customer/traderselctedcrop/tchangecrops/tallcrops/tcrpdetail.dart';
import 'customer/traderselctedcrop/tchangecrops/tcategories/torganiccrops/tocdetail.dart';
import 'customer/traderselctedcrop/tchangecrops/tcategories/ttraditionalcrops/ttrdetail.dart';
import 'farmerpart/bottomnavbar/abccenter/center.dart';
import 'farmerpart/bottomnavbar/abccenter/listoffarmersforcenter/fcenter.dart';
import 'farmerpart/bottomnavbar/abccentmember/trjcenter/trjcdetailpage.dart';
import 'farmerpart/bottomnavbar/bottomnavbar.dart';
import 'farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/allcrops/crops.dart';
import 'farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/categories/organiccrops/organic.dart';
import 'farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/categories/traditionalcrops/traditional.dart';
import 'farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/listoffarmerjoinedcrop/farmerjoin.dart';
import 'farmerpart/bottomnavbar/farmerjoinedcrops/mainfarmerjoinedcrops/scbuyerlist/scbdetailpage.dart';
import 'farmerpart/bottomnavbar/farmerjoinedcrops/mainfarmerjoinedcrops/scbuyerlist/scbuyerscard.dart';
import 'farmerpart/bottomnavbar/shopping/categories/subcategories.dart/machine/machinecard.dart';
import 'farmerpart/bottomnavbar/shopping/categories/subcategories.dart/machine/mdetailpage.dart';
import 'farmerpart/bottomnavbar/shopping/categories/subcategories.dart/seeds/seed.dart';
import 'farmerpart/bottomnavbar/shopping/categories/subcategories.dart/trendingitems/trdetail.dart';
import 'farmerpart/bottomnavbar/shopping/categories/subcategories.dart/trendingitems/trending.dart';
import 'farmerpart/drawerscreen/article/articlecard.dart';
import 'farmerpart/drawerscreen/generatebill/traders.dart';
import 'farmvisit/listoffarmerjoinedcrop/fvdetail.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNaviigationBarProvider(),
        ),
        ChangeNotifierProvider.value(
          value: Articles(),
        ),
        ChangeNotifierProvider.value(
          value: Traders(),
        ),
        ChangeNotifierProvider.value(
        value: Scbuyers(),
        ),
        ChangeNotifierProvider.value(
        value: Machines(),
        ),
        ChangeNotifierProvider.value(
        value: Centers(),
        ),
        ChangeNotifierProvider.value(
          value: Fcenters(),
        ),
        ChangeNotifierProvider.value(
        value: Organics(),
        ),
        ChangeNotifierProvider.value(
        value: Traditionals(),
        ),
        ChangeNotifierProvider.value(
        value: Allcrops(),
        ),
        ChangeNotifierProvider.value(
        value: Farmerjcs(),
        ),
        ChangeNotifierProvider.value(
        value: Seeds(),
        ),
        ChangeNotifierProvider.value(
        value: Trendings(),
        ),
        ChangeNotifierProvider.value(
        value: Tsfarmers(),
        ),
        ChangeNotifierProvider.value(
        value: Trallcrops(),
        ),
        ChangeNotifierProvider.value(
        value: Torganics(),
        ),
        ChangeNotifierProvider.value(
        value: Ttraditionals(),
        ),
        ChangeNotifierProvider.value(
        value: Traderjcs(),
        ),
        ChangeNotifierProvider.value(
        value: Pbfarmers(),
        ),
        ChangeNotifierProvider.value(
        value: Tcenters(),
        ),
        ChangeNotifierProvider.value(
        value: Trcenters(),
        ),
        ChangeNotifierProvider.value(
        value: Fvfarmers(),
        ),
        ChangeNotifierProvider.value(
        value: Abcsellcrops(),
        ),
        ChangeNotifierProvider.value(
        value: Abcbuycrops(),
        ),
        ChangeNotifierProvider.value(
        value: Trdmrequests(),
        ),
        ChangeNotifierProvider.value(
        value: Fmrequests(),
        ),
        ChangeNotifierProvider.value(
        value: Pfrequests(),
        ),
        ChangeNotifierProvider.value(
        value: Lirequests(),
        ),
        ChangeNotifierProvider.value(
        value: Transrequests(),
        ),
        ChangeNotifierProvider.value(
        value: Trjcenters(),
        ),
        ChangeNotifierProvider.value(
        value: Fmcenters(),
        ),
        
      ],

      child: MaterialApp(
        title: 'Farmer App',
        home: OnBoardingScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
        MacDetailPage.routeName: (context) => MacDetailPage(),
        //CartScreen.routeName: (context) => CartScreen(),
        ScbDetailPage.routeName: (context) => ScbDetailPage(),
        CntDetailPage.routeName: (context) => CntDetailPage(),
        FcntDetailPage.routeName: (context) => FcntDetailPage(),
        OrganicDetailPage.routeName: (context) => OrganicDetailPage(),
        TrdDetailPage.routeName: (context) => TrdDetailPage(),
        CrpDetailPage.routeName: (context) => CrpDetailPage(),
        FjcDetailPage.routeName: (context) => FjcDetailPage(),
        ArtDetailPage.routeName: (context) => ArtDetailPage(),
        SdDetailPage.routeName: (context) => SdDetailPage(),
        TrDetailPage.routeName: (context) => TrDetailPage(),
        TsfDetailPage.routeName: (context) => TsfDetailPage(),
        TacDetailPage.routeName: (context) => TacDetailPage(),
        TOrganicDetailPage.routeName: (context) => TOrganicDetailPage(),
        TTrdDetailPage.routeName: (context) => TTrdDetailPage(),
        TjcDetailPage.routeName: (context) => TjcDetailPage(), ///
        PbfDetailPage.routeName: (context) => PbfDetailPage(),
        TCntDetailPage.routeName: (context) => TCntDetailPage(),
        TrcntDetailPage.routeName: (context) => TrcntDetailPage(),
        FvfDetailPage.routeName: (context) =>  FvfDetailPage(),
        ASCDetailPage.routeName: (context) =>  ASCDetailPage(),
        AbBCDetailPage.routeName: (context) =>  AbBCDetailPage(),
        TMRDetailPage.routeName: (context) =>  TMRDetailPage(),
        FmrequestDetailPage.routeName: (context) =>  FmrequestDetailPage(),
        PfrequestDetailPage.routeName: (context) =>  PfrequestDetailPage(),
        LIrequestDetailPage.routeName: (context) =>  LIrequestDetailPage(),
        TransrequestDetailPage.routeName: (context) =>  TransrequestDetailPage(),
        TrjcDetailPage.routeName: (context) =>  TrjcDetailPage(),
        FmcntDetailPage.routeName: (context) =>  FmcntDetailPage(),

      },
      ),
    );
  }
}

