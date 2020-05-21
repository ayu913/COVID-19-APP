import 'package:covidtrackapp/call_and%20_msg/calls_and%20messages_services.dart';
import 'package:covidtrackapp/call_and%20_msg/service_locator.dart';
import 'package:covidtrackapp/utils/colors.dart';
import 'package:covidtrackapp/utils/custom_appbar.dart';


import 'package:flutter/material.dart';




class HealthPage extends StatefulWidget {
  @override
  _HealthPageState createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {

  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
  
  final String number = "1075";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        children: [
          new Container(
            height: 300,
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
                SizedBox(
                  height: 20,
                ),
                CustomAppBarWidget(),
                SizedBox(
                  height: 10,
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: new Text(
                    "COVID-19",
                    style: new TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
                new Container(
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
                  padding: EdgeInsets.all(24),
                  child: Center(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Are you feeling sick?',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 10.0),
                        Text(
                          'If you fell sick with any of covid-19 symptoms please call or SMS us inmediately for help',
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                        SizedBox(height: 20.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: <Widget>[
                              new Expanded(
                                child: new RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () => _service.call(number),
                                  child: new Text(
                                    "Call Now",
                                    style: new TextStyle(color: Colors.black,
                                      fontSize:20,),
                                  
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              new Expanded(
                                child: new RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () => _service.sendSms(number),
                                  child: new Text(
                                    "Send Msg",
                                    style: new TextStyle(color: Colors.black,
                                      fontSize:20,),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: 390),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: new RichText(
                    text: new TextSpan(
                      text: "Symptoms of",
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Courgette',
                        fontSize: 24,
                        color: Colors.black87,
                      ),
                      children: [
                        new TextSpan(
                          text: " COVID 19",
                          style: new TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 120,
                  child: new ListView(
                    padding: const EdgeInsets.only(left: 16),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _buildSymptomItem("assets/images/fever.png", "Fever"),
                      _buildSymptomItem(
                          "assets/images/lungs.png", "Breathless"),
                      _buildSymptomItem("assets/images/cough.png", "Cough"),
                      _buildSymptomItem("assets/images/throat.png", "Throat"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: new Text(
                    "Prevention",
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  child: new ListView(
                    padding: const EdgeInsets.only(left: 16),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _buildPreventionItem("assets/images/washinghand.png",
                          "Wash your", "hands"),
                      _buildPreventionItem("assets/images/elbow.png",
                          "Use elbow", "while cough"),
                      _buildPreventionItem(
                          "assets/images/distance.png", "Social", "distance"),
                      _buildPreventionItem(
                          "assets/images/mask.png", "Wear your", "masks"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _buildSymptomItem(String path, String text) {
    return Column(
      children: <Widget>[
        new Container(
          width: 80,
          height: 80,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            gradient: new LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            border: Border.all(color: Colors.white),
            boxShadow: [
              new BoxShadow(
                color: Colors.black87,
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 3,
              ),
            ],
          ),
          padding: EdgeInsets.only(top: 15),
          child: Image.asset(path),
          margin: const EdgeInsets.only(right: 20),
        ),
        SizedBox(
          height: 7,
        ),
        new Text(
          text,
          style: new TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

Column _buildPreventionItem(String path, String text, String text2) {
  return Column(
    children: <Widget>[
      new Container(
        width: 170,
        height: 80,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
           gradient: new LinearGradient(
              colors: [
                Colors.red,
                Colors.blue,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          border: Border.all(color: Colors.white),
          boxShadow: [
            new BoxShadow(
              color: Colors.black87,
              offset: Offset(1, 1),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          children: <Widget>[
            Image.asset(path),
            SizedBox(
              width: 10,
            ),
            RichText(
              text: new TextSpan(
                text: "$text\n",
                style: new TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  new TextSpan(
                    text: text2,
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        margin: const EdgeInsets.only(right: 20),
      ),
      SizedBox(
        height: 7,
      ),
    ],
  );
}
