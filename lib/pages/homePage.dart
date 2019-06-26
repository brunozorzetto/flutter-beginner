import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _musics = 0;
  int _selectedMusic = 0;
  var _images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
    'images/6.png'
  ]; 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(_images[_selectedMusic], height: 100.0,),
        Text(
          'Musics',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.display4
        ),
        Text(
          'Voce ouviu $_musics',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w300)
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _musics++;

                int selectedMusic = _musics ~/ 2;
                if (selectedMusic <= 4) {
                  _selectedMusic = selectedMusic;
                } else {
                  _selectedMusic = 5;
                }

              });
            },
            child: Icon(Icons.add),
          )
        )
      ],
    );
  }
}