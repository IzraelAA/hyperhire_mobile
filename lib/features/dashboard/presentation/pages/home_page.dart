import 'package:flutter/material.dart';
import 'package:hyperhire/features/dashboard/presentation/widgets/animated_banner.dart';
import 'package:hyperhire/features/dashboard/presentation/widgets/footer.dart';
import 'package:hyperhire/features/dashboard/presentation/widgets/top_three_products.dart';
import 'package:hyperhire/features/dashboard/presentation/widgets/top_user_list.dart';
import 'package:hyperhire/utils/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGO'),
      ),
      body: ListView(
        children: [
          search(),
          const SizedBox(
            height: 2,
          ),
          const AnimatedBanner(),
          const SizedBox(
            height: 14,
          ),
          const TopThreeProducts(),
          const SizedBox(
            height: 14,
          ),
          Container(
            color: AppColor.background,
            height: 14,
            width: double.infinity,
          ),
          const SizedBox(
            height: 14,
          ),
          TopUsersList(),
          const Footer(),
        ],
      ),
    );
  }

  Widget search() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF3C41BF),
            Color(0xFF74FBDE),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: '검색어를 입력하세요',
          suffixIcon: Icon(
            Icons.search,
            color: AppColor.iris100,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(left: 10),
        ),
        onChanged: (query) {},
      ),
    );
  }
}
