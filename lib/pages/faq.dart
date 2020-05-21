import 'package:covidtrackapp/utils/const.dart';
import 'package:flutter/material.dart';


class FaqPage extends StatelessWidget {
  const FaqPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ❓🙋‍♂️'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ExpansionTile(
          //for faq view
          title: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                DataSource.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10),
                child: Text(DataSource.questionAnswers[index]['answer'])),
          ],
        ),
        itemCount: DataSource.questionAnswers.length,
      ),
    );
  }
}