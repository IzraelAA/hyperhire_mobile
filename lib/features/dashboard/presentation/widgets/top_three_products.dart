import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/utils/app_color.dart';

class TopThreeProducts extends StatelessWidget {
  const TopThreeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "제일 핫한 리뷰를 만나보세요",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff616161),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '리뷰️ 랭킹⭐ top 3',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 26),
          productCard(
            number: 1,
            name: 'LG전자 스탠바이미 27ART10AKPL (스탠드)',
            review: [
              '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요.',
              '배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
              '스탠바이미는 사랑입니다!️'
            ],
            rating: 4.89,
            reviewsCount: 216,
            feature: '편리성',
            image: 'assets/images/product_1.png',
          ),
          const SizedBox(height: 26),
          productCard(
            number: 2,
            name: 'LG전자 울트라HD 75UP8300KNA (스탠드)',
            review: [
              '화면 잘 나오고... 리모컨 기능 좋습니다.',
              '넷플 아마존 등 버튼하나로 바로 접속 되고',
              '디스플레이는 액정문제 없어보이고',
              '소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐',
              '그냥 블루투스 헤드폰 구매 예정이라',
              '문제는 없네요. 아주 만족입니다!!'
            ],
            rating: 4.36,
            reviewsCount: 136,
            feature: '고화질',
            image: 'assets/images/product_2.png',
          ),
          const SizedBox(height: 26),
          productCard(
            number: 3,
            name: '라익미 스마트 DS4001L NETRANGE (스탠드)',
            review: [
              '반응속도 및 화질이나 여러면에서도 부족함을 느끼기에는 커녕',
              '이정도에 이 정도 성능이면 차고 넘칠만 합니다.',
              '중소기업TV 라익미 제품을 사용해보았는데',
              '뛰어난 가성비와 더불어',
              'OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔',
              '기능들을 사용 가능했고'
            ],
            rating: 3.98,
            reviewsCount: 98,
            feature: '가성비',
            image: 'assets/images/product_3.png',
          ),
        ],
      ),
    );
  }

  Widget productCard({
    required int number,
    required String name,
    required List<String> review,
    required double rating,
    required int reviewsCount,
    required String feature,
    required String image,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.liteGray),
            borderRadius: BorderRadius.circular(4)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SvgPicture.asset("assets/svg/crown.svg"),
                  Center(
                      child: Text(
                    number.toString(),
                    style: const TextStyle(color: Colors.white),
                  ))
                ],
              ),
              Container(
                width: 104,
                height: 104,
                margin: const EdgeInsets.only(right: 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: review
                    .take(2)
                    .map((line) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "• ${line.trimRight()}",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 4),
                          ],
                        ))
                    .toList(),
              ),
              const SizedBox(height: 8),
              Text(
                '평점: $rating ($reviewsCount개 리뷰)',
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                '특징: $feature',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
