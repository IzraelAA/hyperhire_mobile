import 'package:flutter/material.dart';
import 'package:hyperhire/features/dashboard/presentation/widgets/title_section.dart';

class TopUsersList extends StatelessWidget {
  // List nama pengguna
  final List<String> topUsers = [
    'Name01',
    'Name02',
    'Name03',
    'Name04',
    'Name05',
    'Name06',
    'Name07',
    'Name08',
    'Name09',
    'Name10',
  ];

   TopUsersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleSection(
            title: "골드 계급 사용자들이예요",
            subtitle: '베스트 리뷰어 🏆 Top10',
            padding: EdgeInsets.symmetric(horizontal: 16.0),
          ),
          const SizedBox(height: 26),
          Container(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topUsers.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 31, // Radius gambar lingkaran
                        backgroundImage: AssetImage(
                            'assets/images/user_${index + 1}.png'), // Sesuaikan dengan nama file gambar
                      ),
                      SizedBox(height: 4),
                      Text(
                        topUsers[index],
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
