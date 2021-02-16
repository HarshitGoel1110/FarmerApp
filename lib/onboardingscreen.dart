import 'package:farmer/logsign.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController _pageController;
  int currentIndex = 0;
  final int numPages =3;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20, top: 20),
            child: RaisedButton(
              color: Colors.white,
              elevation: 0,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Firstpage()));
              },
              child: Text('Skip', style: TextStyle(
                color: Colors.green[800],
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: <Widget>[
              makePage(
                image: 'assets/images/onboardscreen1.jpg',
                title: Strings.stepOneTitle,
                content: Strings.stepOneContent
              ),
              makePage(
                reverse: true,
                image: 'assets/images/onboardscreen2.png',
                title: Strings.stepTwoTitle,
                content: Strings.stepTwoContent
              ),
              makePage(
                image: 'assets/images/onboardscreen3.png',
                title: Strings.stepThreeTitle,
                content: Strings.stepThreeContent
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          )
        ],
      ),
      bottomSheet: currentIndex == numPages - 1
          ? GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Firstpage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0,bottom: 30,left:60,right: 60),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.getFont(
                        'Open Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
            )
          : null,
    );
  }

  Widget makePage({image, title, content, reverse = false}) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          !reverse ? 
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0,vertical: 2),
                child: Image.asset(image),
              ),
              SizedBox(height: 30,),
            ],
          ) : SizedBox(),
          Text(title, style: GoogleFonts.getFont(
            'Open Sans',
            color: Colors.green[800],
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          Text(content, textAlign: TextAlign.center, style: GoogleFonts.getFont(
            'Roboto',
            color: Colors.green[600],
            fontSize: 20,
            fontWeight: FontWeight.w400
          ),),
          reverse ? 
          Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Image.asset(image),
              ),
            ],
          ) : SizedBox(),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.green[800],
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i<3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}

class Strings {
  static var stepOneTitle = "Welcome To Farmsbook ";
  static var stepOneContent = "One stop for all solution, Here you get all kinds of details to grow your crops and Discover Better Buyer For Crop,";
  static var stepTwoTitle = "Network";
  static var stepTwoContent = "Join the growing network of Farmer\'s and Trader\'s, Discovery of Better Buyer For Your Crops";
  static var stepThreeTitle = "Easy Selling And Buying";
  static var stepThreeContent = "Through ABC Center You Can Sell your goods at best price, and buy any goods, without any hesitation on one tap";
}