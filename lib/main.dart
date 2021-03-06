import 'package:covidpool/datasource.dart';
import 'package:covidpool/tabs/india/indiaHomePage.dart';
import 'package:covidpool/tabs/worldwide/worldwideScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Used for the Botton Navigation Bar
  int _selectedIndex = 0;
  List<Widget> _widgetList = [IndiaHomePage(), WorldHomePage()];
  List<String> _appBarNames = ["KENYA", "WORLDWIDE"];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Circular",
        primaryColor: primaryBlack,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_appBarNames[_selectedIndex]),
          centerTitle: true,
        ),
        body: _widgetList[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.flag),
              label: "Kenya",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "World",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
