
import 'package:covidtrackapp/screens/cases.dart';
import 'package:covidtrackapp/screens/health.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        
      appBar: new AppBar(
        actions: [
        Padding(
          padding: const EdgeInsets.only(right:310),
          child: new IconButton(icon: new Icon(
              Icons.menu,
              color:Color(0xff0000000),
            ),
             onPressed: null,
             ),
        ),
          
        ],
        
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: new Container(
        
        child: Stack(
          children: [
            
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: new Text(
              "Covid-19",
              style: new TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Card(
            margin: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 30.0),
            color: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: new Row(
             
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: new Text(
                    "Stay at \n  home to \n Save lifes",
                    style: new TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                new Image(
                  image: AssetImage("assets/images/home.png"),
                  width: 135.0,
                  height: 200.0,
                ),
              ],
            ),
          ),
         
          Row(
            children: [
                
                 Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 370.0, 20.0, 75.0),
                      child: GestureDetector(
                        onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => HealthPage()));
                        },
                        
                                              child: new Card(
                        
                          // margin: const EdgeInsets.fromLTRB(10.0, 60.0, 20.0, 60.0),
                          color: Colors.black,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 100.0,
                                width: 130.0,
                                child:new Text("Preventions\n   & Symptoms",style: new TextStyle(fontSize: 25, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                     
               
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 370.0, 20.0, 75.0),
                child: GestureDetector(
                 
                   onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => CasesPage()));
                        },

                                  child: new Card(
                    // margin: const EdgeInsets.fromLTRB(20.0, 60.0, 10.0, 60.0),
                    color: Colors.black,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100.0,
                          width: 130.0,
                           child:new Text(" Cases\n   & Latest\n Updates",style: new TextStyle(fontSize: 25, color: Colors.white),),
                        ),
                        
                      ],
                    ),
                  ),
                ),
               
              ),
            ],
          ),
          new Row(
            children: [
               Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 220.0, 10.0, 0.0),
            child: Container(
              margin: const EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 60.0),
              height: 120.0,
              width: 120.0,
              decoration: new BoxDecoration(
                
                image:new DecorationImage(
                  fit:BoxFit.cover,
                  image:AssetImage("assets/images/home1.png"))
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 220.0, 20.0, 0.0),
            child: Container(
              margin: const EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 60.0),
              height: 180.0,
              width: 130.0,
              decoration: new BoxDecoration(
                
                image:new DecorationImage(
                  // fit:BoxFit.cover,
                  image:AssetImage("assets/images/earth.png"))
              ),
            ),
          ),
            
            ],

          ),
        ]),
      ),
    );
  }
}
