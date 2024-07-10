import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200], // Warna latar belakang footer
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LOGO Inc.',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '회사 소개',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            '인재 채용',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            '기술 블로그',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            '리뷰 저작권',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.mail_outline),
              SizedBox(width: 8),
              Text(
                'review@logo.com',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'KOR',
            style: TextStyle(fontSize: 14),
          ),
          Text(
            '@2022-2022 LOGO Lab, Inc. (주)아무개 서울시 강남구',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}