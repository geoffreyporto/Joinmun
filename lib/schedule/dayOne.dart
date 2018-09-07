import 'package:flutter/material.dart';


class DayOne extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    List<IconData> icon = [Icons.assignment, Icons.stars, Icons.restaurant, Icons.group];
    List<String> scheduleName = ['Registration and Check-in', 'Opening Ceremony', 'Dinner', 'Conference Zero'];
    List<String> scheduleTime = ['12:00 - 15:00', '16:00 - 18:00', '18:00 - 20:00', '20:00 - 20:30'];
    var theme = Theme.of(context);
    return new Container(
      child: new StreamBuilder(
          builder: (context, snapshot) {
            return new ListView.builder(
              itemCount: scheduleName.length,
              padding: const EdgeInsets.all(8.0),
              itemBuilder: (context, index) {
                return new Card(
                elevation: 0.0,
                margin: const EdgeInsets.all(8.0),
                child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(icon[index], color: theme.accentColor, size: 32.0,),
                    title: new Text(scheduleName[index], style: new TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0, fontFamily: 'CenturyGothic'),),
                    subtitle: new Text(scheduleTime[index], style: new TextStyle(fontSize: 16.0, fontFamily: 'CenturyGothic'),),
          )
        ],
      ),
    );
              }
            );
          }),
    );
  }
}



 