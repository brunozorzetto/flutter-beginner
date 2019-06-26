import 'package:flutter/material.dart';
import 'pages/homePage.dart';
import 'pages/brunoPage.dart';

class Template extends StatefulWidget {
  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {

  var homePage = new HomePage();
  var brunoPage = new BrunoPage();
  var _selectedPage = 0;
  var _pages;

  @override
  Widget build(BuildContext context) {
    _pages = [
        homePage,
        brunoPage
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Bruno First App'),
        backgroundColor: Colors.lightBlue,
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
          BottomNavigationBarItem(icon: Icon(Icons.score), title: Text('Bruno'))
        ],
        fixedColor: Colors.lightBlue,
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
           _selectedPage = index; 
          });
        },
      ),
    );
  }

  _body() {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      constraints: BoxConstraints.expand(),
      child: _pages[_selectedPage],
    );
  }
}