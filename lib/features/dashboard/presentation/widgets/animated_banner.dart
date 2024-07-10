import 'package:flutter/material.dart';

class AnimatedBanner extends StatefulWidget {
  const AnimatedBanner({super.key});

  @override
  AnimatedBannerState createState() => AnimatedBannerState();
}

class AnimatedBannerState extends State<AnimatedBanner> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    // Automatically switch pages every 3 seconds
    Future.delayed(Duration(seconds: 3)).then((_) {
      _switchPage();
    });
  }

  void _switchPage() {
    if (_pageController.hasClients) {
      _currentPage = (_currentPage + 1) % 4;
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      Future.delayed(Duration(seconds: 3)).then((_) {
        _switchPage();
      });
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 221,
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              Image.asset(
                'assets/images/ads_1.png',
                fit: BoxFit.fitWidth,
              ),
              Image.asset(
                'assets/images/ads_2.png',
                fit: BoxFit.fitWidth,
              ),
              Image.asset(
                'assets/images/ads_3.png',
                fit: BoxFit.fitWidth,
              ),
              Image.asset(
                'assets/images/ads_4.png',
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                width: _currentPage == index ? 9 : 4,
                height: 4,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: _currentPage == index ? Colors.white : Colors.grey,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
