
import 'package:farmer/customer/chome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TraderSignup extends StatefulWidget {
  @override
  _TraderSignupState createState() => _TraderSignupState();
}

class _TraderSignupState extends State<TraderSignup> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  String email;
  String password;
  String confirmPassword;
  String name;
  String mobile;
  String state;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;


  Future<void> signIn() async {
    //TODO: ADD CIRCULAR PROGRESSOR INSTEAD OF SUBMIT BY SETTING STATE AND REMOVE AFTER THIS METHOD GETS COMPLETED
    _formKey.currentState.save();
    try {
      print(mobile.trim() + '@gmail.com');
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: mobile.trim() + '@gmail.com',
          password: password
      );

      firestore.collection('traders').doc(userCredential.user.uid).set({
        'name': name,
        'email': email,
        'mobile': mobile,
        'password': password,
        'address': '',
        'state': state,
        'pinCode': '',
        'tradingCrops': [],
        'tradingSince': '',
        'workers': 0,
        'income': 0,
        'photoUrl': '',
        'uid': userCredential.user.uid
      });

      //TODO: SHOW TOAST OPF SUCCESSFUL REGISTRATION

      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Thome()));


    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        //TODO: SHOW ERROR TOAST
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        //TODO: SHOW ERROR TOAST
        print('The account already exists for that email.');
      }
    } catch (e) {
      //TODO: SHOW ERROR TOAST
      print(e);
    }

  }

  void _submit(BuildContext context, String mobile) async{
    final isValid = _formKey.currentState.validate();
    _formKey.currentState.save();
    print(isValid);
    print(mobile);
    if (isValid) {
      if(password != confirmPassword) {
        print('Password doesnot match');
        return;
        //TODO: SHOW ERROR TOAST
      }
      else {
        signIn();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text("Trader SignUp",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
      ),
      backgroundColor: Colors.cyan[50],
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          //form
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                //styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.001,
                ),
                //text input
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  onFieldSubmitted: (value) {},
                  //obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter Name';
                    }
                    return null;
                  },
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-Mail',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    //Validator
                  },
                  onSaved: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  validator: (value) {
                    if (value.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
                //box styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                //text input
                TextFormField(
                  decoration: InputDecoration(labelText: 'Mobile Number',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  onSaved: (value) {
                    setState(() {
                      mobile = '+91' + value;
                    });
                    print(mobile);
                  },

                  onChanged: (value) {
                    setState(() {
                      mobile = '+91' + value;
                    });
                    print(mobile);
                  },
                  //obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter a valid mobile number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                //text input
                TextFormField(
                  decoration: InputDecoration(labelText: 'State',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  onSaved: (value) {
                    setState(() {
                      state = value;
                    });
                  },
                  //obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter a valid state';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                //text input
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  onSaved: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                //text input
                TextFormField(
                  decoration: InputDecoration(labelText: 'Confirm Password',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  onSaved: (value) {
                    setState(() {
                      confirmPassword = value;
                    });
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),

                RaisedButton(
                  color: Colors.cyan[900],
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 15.0,
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.openSans(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600,letterSpacing: 1.4),
                  ),
                  onPressed: () {
                    _submit(context, mobile);
                    //signIn('123456');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}