import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BrunoPage extends StatefulWidget {
  @override
  BrunoPageState createState() => BrunoPageState();
}

class BrunoPageState extends State<BrunoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Visite', textAlign: TextAlign.center, style: Theme.of(context).textTheme.display2),
        RaisedButton(
          child: Text("Bruno's", textAlign: TextAlign.center),
          onPressed: () {
            _launchURL();
          },
        )
      ],
    );
  }

  _launchURL() async {
    const url = 'https://flutter.dev/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}