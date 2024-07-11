import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            icon: SvgPicture.asset(
              'assets/svg/home.svg',
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/category_default.svg'),
            label: '카테고리',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/community_default.svg'),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/mypage_default.svg'),
            label: '마이페이지',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
