import 'dart:convert';
// import 'package:url_launcher/url_launcher.dart';

import 'package:covidtrackapp/utils/chart.dart';
import 'package:covidtrackapp/utils/colors.dart';

import 'package:covidtrackapp/utils/custom_appbar.dart';
import 'package:covidtrackapp/utils/infopannel.dart';
import 'package:covidtrackapp/pages/countryPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CasesPage extends StatefulWidget {
  @override
  _CasesPageState createState() => _CasesPageState();
}

class _CasesPageState extends State<CasesPage> {
  Map worldData;
  Future fetchWorldWideData() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = json.decode(response.body);
      debugPrint(response.body);
    });
  }

  @override
  void initState() {
    fetchWorldWideData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: worldData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : new Stack(
              children: [
                new Container(
                  height: 250,
                  decoration: new BoxDecoration(
                     gradient: new LinearGradient(colors: [
         AppColors.backgroundColor,
         AppColors.mainColor,
       ],
       begin: Alignment.topCenter,
       end:Alignment.bottomCenter,
       
       ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )),
                  padding: const EdgeInsets.only(top: 25),
                ),
                new Container(
                  padding: const EdgeInsets.only(top: 25),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      CustomAppBarWidget(),
                       SizedBox(height: 10,),
                      new Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: new Text(
                          "WORLD CASES",
                          style: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32),
                        ),
                      ),
                      _buildStatistic(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 420, 0, 0),
                  child: Container(
                    height: 65,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(14)),
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        'Last Updated ${DateTime.now()},',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(200, 420, 00, 0),
                  child: Container(
                      height:65,
                      width: 140,
                        decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(14)),
                    child: new FlatButton(
                    
                      
                      
                      onPressed: (){
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CountryPage(),
                            ),
                          );
                      },
                       child: new Text("Regional",
                       style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,),
                       ),
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 530, 0, 0),
                  child: new Container(
                   
              child: Infopannel(), //info pannel
             
           
           
                  ),
                ),
                
                

              ],
            ),
    );
  }

  Widget _buildStatistic() {
    return new Container(
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 1),
                            spreadRadius: 1,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            new Container(
                              height: 190,
                              width: 165,
                              child: DonutPieChart.withSampleData() ,
                            ),
                            SizedBox(width: 15),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: new Column(
                                children: [
                                  _buildCasesItem(Colors.redAccent, "Confirmed",
                                      worldData['cases'].toString()),
                                  _buildCasesItem(Colors.blueAccent, "Activated",
                                      worldData['active'].toString()),
                                  _buildCasesItem(Colors.green, "Recovered",
                                      worldData['recovered'].toString()),
                                  _buildCasesItem(Colors.grey, "Deceased",
                                      worldData['deaths'].toString()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
  }
}

Widget _buildCasesItem(Color color, String title, String value) {
  return new Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      new Icon(
        Icons.label,
        size: 50,
        color: color,
      ),
      new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text(
            title,
            style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(value),
        ],
      ),
    ],
  );
}
