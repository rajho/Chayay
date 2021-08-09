import 'package:chayay/widgets/favorites.dart';
import 'package:chayay/widgets/health.dart';
import 'package:chayay/widgets/map.dart';
import 'package:chayay/widgets/profile.dart';

import 'package:flutter/material.dart';

class ChayayRoute extends StatefulWidget {
  ChayayRoute({Key key}) : super(key: key);

  @override
  _ChayayRouteState createState() => _ChayayRouteState();
}

class _ChayayRouteState extends State<ChayayRoute> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Map(),
    Profile(),
    Health(),
    Favorites(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.purple,
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.purpleAccent[100],
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Ir'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Perfil'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Salud'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          title: Text('Favoritos'),
        ),
      ],
    );

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions
            .map<Widget>((Widget w) => Center(
                  child: w,
                ))
            .toList(),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
