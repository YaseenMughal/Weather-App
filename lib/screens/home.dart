import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherproject/constant/color_constant.dart';
import 'package:weatherproject/screens/dashboard.dart';
import 'package:weatherproject/screens/location.dart';
import 'package:weatherproject/screens/prediction.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Predictions',
      style: optionStyle,
    ),
    Text(
      'Index 2: Location',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screens = [DashboardView(), PredictView(), LocateView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstant.lightgreenColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp), label: "Home"),
            BottomNavigationBarItem(
                icon: FaIcon(Icons.hourglass_bottom_outlined),
                label: "Predictions"),
            BottomNavigationBarItem(
                icon: FaIcon(Icons.location_on_outlined), label: "Location"),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ColorConstant.seagreenColor,
          onTap: _onItemTapped,
        ),
        body: screens[_selectedIndex]);
  }
}
