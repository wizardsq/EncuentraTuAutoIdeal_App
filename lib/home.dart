import 'package:flutter/material.dart';
import 'comparando.dart';
import 'acercade.dart';
import 'inicio.dart';
class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key ? key}) : super(key: key);
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}
class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
static const double IconSize = 200;
static List<Widget> _widgetOptions = <Widget>[
Inicio(),
Acercade(),
];

void _onItemTapped(int index) {
setState(() {
_selectedIndex = index;
});
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inicio',
                backgroundColor: Colors.teal
            ),
            
            BottomNavigationBarItem(
              
              icon: Icon(Icons.chat),
              label: 'Acerca de',
              backgroundColor: Colors.lightBlue,
              
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          onTap:_onItemTapped,
          elevation: 5
      ),
    );
  }
}