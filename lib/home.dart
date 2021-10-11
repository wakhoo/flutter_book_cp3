import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //todo state variables and funtions
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      //todo: show selected tab
      body: pages[_selectedIndex],
      /* Center(
          child: Text('Let\'s get cooking 👩‍🍳',
              style: Theme.of(context).textTheme.headline1)),
       */ //todo:add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        //todo: set selected tab bar
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
