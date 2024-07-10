import 'package:flutter/material.dart';
import 'package:hyperhire/features/dashboard/presentation/pages/home_page.dart';
import 'package:hyperhire/utils/app_color.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppColor.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place,
              color: AppColor.black,
            ),
            label: 'My Trip',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place,
              color: AppColor.black,
            ),
            label: 'My Trip',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
              color: AppColor.black,
            ),
            label: 'My Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
