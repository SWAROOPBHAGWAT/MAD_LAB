/*
* Exp 4 - ListView and Card Layout
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live SportsHD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> sportsChannels = [
    "ESPN",
    "Fox Sports",
    "NBC Sports",
    "CBS Sports",
    "Sky Sports",
    "beIN Sports",
    "Eurosport",
    "BT Sport",
    "Star Sports",
    "Sony Ten",
    "Sportsnet",
    "TSN (The Sports Network)",
    "DAZN (pronounced 'da zone')",
    "FuboTV Sports Network",
    "Willow TV",
    "NBA TV",
    "NFL Network",
    "MLB Network",
    "Golf Channel",
    "Tennis Channel"
  ];

  final List<IconData> channelIcons = [
    Icons.sports_soccer,
    Icons.sports_basketball,
    Icons.sports_football,
    Icons.sports_golf,
    Icons.sports_hockey,
    Icons.sports_mma,
    Icons.sports_motorsports,
    Icons.sports_rugby,
    Icons.sports_volleyball,
    Icons.sports_cricket,
    Icons.sports_esports,
    Icons.sports_baseball,
    Icons.sports_tennis,
    Icons.sports_handball,
    Icons.sports_kabaddi,
    Icons.sports_tennis,
    Icons.sports_volleyball,
    Icons.sports_baseball,
    Icons.sports_golf,
    Icons.sports_tennis,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live SportsHD'),
      ),
      body: ListView.builder(
        itemCount: sportsChannels.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(sportsChannels[index]),
              subtitle: Text('Language: English'),
              leading: Icon(channelIcons[index]),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Handle tap event
              },
            ),
          );
        },
      ),
    );
  }
}
