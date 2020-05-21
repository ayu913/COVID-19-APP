import 'package:covidtrackapp/utils/colors.dart';
import 'package:covidtrackapp/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: new Container(
          color: Colors.red,
        ),
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
       gradient: new LinearGradient(colors: [
         AppColors.backgroundColor,
         AppColors.mainColor,
       ],
       begin: Alignment.topCenter,
       end:Alignment.bottomCenter,
       
       ),


        ),
        child: new Stack(
          children: [
            new Padding(
              padding: const EdgeInsets.only(top: 90.0, left: 260.0),
              child: Image.asset(
                "assets/images/Corona.png",
                height: 60.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90.0, left: 50),
              child: Text(
                "COVID-19",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 150.0, left: 50),
              child: Text(
                "(Corona Virus)",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Image.asset(
                  "assets/images/introimg.png",
                  height: 390.0,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              child: new Container(
                width: MediaQuery.of(context).size.width,
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Text(
                      "What you need to know about",
                      style: new TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 25),
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => HomePage()));
                      },
                      child: new Container(
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                new BorderRadius.all(Radius.circular(20.0))),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 60,
                        child: new Center(
                          child: new Text(
                            "GET STARTED",
                            style: new TextStyle(
                                color: Color(0xff27415B),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
