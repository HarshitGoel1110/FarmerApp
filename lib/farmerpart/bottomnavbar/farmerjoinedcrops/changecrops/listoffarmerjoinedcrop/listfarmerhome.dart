
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/listoffarmerjoinedcrop/farmerjoin.dart';
import 'package:farmer/farmerpart/drawerscreen/otherhelp/homeotherhelp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'itemfarjoin.dart';

class FarmerJList extends StatefulWidget {

  @override
  _FarmerJListState createState() => _FarmerJListState();
}

class _FarmerJListState extends State<FarmerJList> {
  @override
  // ignore: must_call_super
  void initState(){

    Future.delayed(Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0.020 * MediaQuery.of(context).size.height,), 
            topRight: Radius.circular(0.020 * MediaQuery.of(context).size.height,),                                       
          ),
        ),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        builder: (builder) {
          return SingleChildScrollView(
            child: Stack(
              overflow: Overflow.visible,
              children: [

              //bottomsheet items
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                             
                      //text
                      Padding(
                        padding: EdgeInsets.only(top: 0.030 * MediaQuery.of(context).size.height, left: 0.076 * MediaQuery.of(context).size.height, right: 0.074 * MediaQuery.of(context).size.height,),
                          child: Container(
                            alignment: Alignment.center,
                            height: 0.029 * MediaQuery.of(context).size.height,
                            width: double.infinity,
                              child: Text(
                                'Are you Intereseted In', 
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 0.00124 * MediaQuery.of(context).size.height,
                                ),
                              ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 0.026 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                          child: FlatButton(
                            color: Colors.green[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                            ),
                            height: 0.045 * MediaQuery.of(context).size.height,
                            minWidth: double.infinity,
                            child: Text(
                              'Loan',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color.fromRGBO(255,255,255,1),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtherHelpHome()));
                            },
                          ),
                        ),

                        //farmvisit
                        Padding(
                          padding: EdgeInsets.only(top: 0.0007 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                          child: FlatButton(
                            color: Colors.green[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                            ),
                            height: 0.045 * MediaQuery.of(context).size.height,
                            minWidth: double.infinity,
                            child: Text(
                              'Insurance',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color.fromRGBO(255,255,255,1),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtherHelpHome()));
                            },
                          ),
                        ),

                                    

//flatbutton
                        /*Padding(
                          padding: EdgeInsets.only(top: 0.0007 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,bottom: 0.014 * MediaQuery.of(context).size.height),
                          child: FlatButton(
                            color: Colors.green[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                            ),
                            height: 0.045 * MediaQuery.of(context).size.height,
                            minWidth: double.infinity,
                            child: Text(
                              'Farm Visit',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color.fromRGBO(255,255,255,1),
                              ),
                            ),
                            //onPressed: ,
                          ),
                        ),*/

 //bottom text
                            
                          ],
                        ),
                ),
              ),
                
             
              ],
            ),
          );
        });
    });
  }

  @override
  Widget build(BuildContext context) {

    final farmerjcData = Provider.of<Farmerjcs>(context);
    final fjcs = farmerjcData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Organic Crops',style: GoogleFonts.openSans(),),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: fjcs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: MediaQuery.of(context).size.height * 0.00275),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: fjcs[i],
      child: FarjoinItem(
        name: fjcs[i].name,
        place: fjcs[i].place,
        imgUrl: fjcs[i].imgUrl,
        growing: fjcs[i].growing,
        phoneno: fjcs[i].phoneno,
        //page: scbs[i].page,
        since: fjcs[i].since,
        rating: fjcs[i].rating,
        email: fjcs[i].email,
        //price: trds[i].price,
      ),
    ),
    ),
    );
  }
}
  

//dropdown
class DropDownTextField extends StatefulWidget {
  @override
  _DropDownTextFieldState createState() => _DropDownTextFieldState();
}

class _DropDownTextFieldState extends State<DropDownTextField> {
  String _value;
  
    @override
    Widget build(BuildContext context) {
      return DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            child: Row(
                children: <Widget>[
                  Text(
                    'City',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
            ),
            value: 'one',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'State',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            value: 'two',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Land Acre 0-1',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            value: 'three',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Land Acre 2-3',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            value: 'four',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Land Acre 3 above',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    
                  ),
                ),
              ],
            ),
            value: 'five',
          ),
        ],
        isExpanded: false,
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        hint: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Sort',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        value: _value,
        underline: Container(
          height: 24,
          width: 20,
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white))
          ),
        ),
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        iconEnabledColor: Color.fromRGBO(0,0,0,1),
  //        iconDisabledColor: Colors.grey,
        iconSize: 19,
      );
    }
  }

/*Column(
        children: [

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom : 0.058 * MediaQuery.of(context).size.height,),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: 0.00275 * MediaQuery.of(context).size.height,
                children: [
                  FarmerListCard(
                    image: 'assets/images/p2.jpg',
                    name: 'Umesh Shah',
                    producing: 'Wheat',
                    since: '2012',
                    address: 'Jaipur, Rajasthan',
                    page: Umeshs(),
                  ),
                  FarmerListCard(
                    image: 'assets/images/p2.jpg',
                    name: 'Kiran Shah',
                    producing: 'Apple',
                    since: '2015',
                    address: 'Amritsar, Punjab',
                    //page: Kiran(),
                  ),
                  FarmerListCard(
                    image: 'assets/images/p2.jpg',
                    name: 'Mitesh Shah',
                    producing: 'Coffee',
                    since: '2004',
                    address: 'Kerela',
                    //page: Mitesh(),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

*/