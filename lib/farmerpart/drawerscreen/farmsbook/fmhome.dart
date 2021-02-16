import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'models/transactions.dart';
import 'widgets/chart.dart';
import 'widgets/new_transaction.dart';
import 'widgets/transaction_list.dart';

class FmHome extends StatefulWidget {
  @override
  _FmHomeState createState() => _FmHomeState();
}

class _FmHomeState extends State<FmHome> {

  final List<Transaction> _userTransactions = [
    // Transaction(
    //     id: 't1', title: 'New Shoes', amount: 65.60, date: DateTime.now()),
    // Transaction(
    //     id: 't2', title: 'Grocery', amount: 10.40, date: DateTime.now()),
  ];

  
  void _addNewTransaction(String txtitle, double txamount, DateTime pickedDate) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txtitle,
      amount: txamount,
      date: pickedDate,
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _openAddTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (BuildContext context) {
          return GestureDetector(
            child: NewTransaction(_addNewTransaction),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  void _deleteTransaction(String id){
    setState(() {
      _userTransactions.removeWhere((tx)=>tx.id==id);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmsbook Expense',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _openAddTransaction(context),
            ),
          )
        ],
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            //add total money spend here
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,),
                height: 120,
                width: double.infinity,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('Total Money Spend',style: GoogleFonts.openSans(fontSize: 28, fontWeight: FontWeight.w700,color: Colors.green[600])),
                      Text('2500 Rs',style: GoogleFonts.openSans(fontSize: 26, fontWeight: FontWeight.w600)),
                    ],
                  ),
                )
              ),
            ),
            TransactionList(_userTransactions, _deleteTransaction), //list of transactions
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Builder(
        builder: (acontext) => FloatingActionButton(
          onPressed: () => _openAddTransaction(acontext),
          child: Icon(Icons.add,),
          backgroundColor: Colors.green[900],
        ),
      ),
    );
  }
}
  /*final texteditingcontroller = TextEditingController();
  bool validated = true;
  String errtext = "";
  
  
  void showalertdialog(){
    showDialog(context: context,
    builder: (context) {
      return StatefulBuilder(builder: (context, setState){
        return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: Text(
        "Add ",
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            //controller: texteditingcontroller,
            autofocus: false,
            style: TextStyle(
              fontSize: 20.0,
            ),
            decoration: InputDecoration(
              errorText: validated ? null : errtext,
              hintText: 'Enter Name '
            ),
            maxLines: 1,
          ),
          TextField(
            //controller: texteditingcontroller,
            autofocus: false,
            style: TextStyle(
              fontSize: 20.0,
            ),
            decoration: InputDecoration(
              errorText: validated ? null : errtext,
              hintText: 'Enter Price'
            ),
          ),
          //image picker
          ImagePickerData(),
          Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){},
                  color: Colors.green[800],
                  child: Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Calibri",
                      color: Colors.white,
                     ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
      });
    }
  );
  }
  
  Widget mycard(String task){
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
            "$task",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          onLongPress: (){
            print("Should Get Deleted");
          },
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showalertdialog,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.green[800],
      ),
      appBar: AppBar(
        title: Text(
          "Farmsbook Expenses",
          style: TextStyle(
            fontFamily: "Calibri",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green[800],
        centerTitle: false,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mycard("Bill Payed - Rs 5000"),
            mycard("Buyed \nMilk - 500 \nOrange - 100\nCucumber - 300"),
            mycard("Buyed Manure - 1000"),
          ],
        ),
      ),
    );
  }
}

class ImagePickerData extends StatefulWidget {
  List Data;
  int ITId;
  ImagePickerData({this.Data, this.ITId});
  @override
  AttachmentState createState() => new AttachmentState();
}

class AttachmentState extends State<ImagePickerData> {
  File _image;

  @override
  Widget build(BuildContext context) {
    Future getCamera() async {
      var image = await ImagePicker.pickImage(source: ImageSource.camera);
      setState(() {
        _image = image;
      });
    }

    Future getGallery() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);
      setState(() {
        _image = image;
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 150.0,
          child: Center(
            child: _image == null
                ? Text('No image selected.')
                : Image.file(_image),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                        elevation: 4.0,
                        onPressed: () {
                          getGallery();
                        },
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        child: Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFFf7418c),
                                  Color(0xFFfbab66),
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0))),
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text('Picture From Gallery',
                                    style: TextStyle(fontSize: 15)),
                              ],
                            ))),
                    RaisedButton(
                      elevation: 4.0,
                      onPressed: () {
                        getCamera();
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFFf7418c),
                                  Color(0xFFfbab66),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0))),
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('Take Picture',
                                  style: TextStyle(fontSize: 15)),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}*/