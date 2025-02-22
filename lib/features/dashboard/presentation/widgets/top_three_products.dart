import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/features/dashboard/presentation/widgets/title_section.dart';
import 'package:hyperhire/utils/app_color.dart';
import 'package:hyperhire/utils/app_text_style.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TitleSection(
                title: "제일 핫한 리뷰를 만나보세요",
                subtitle: '리뷰️ 랭킹⭐ top 3',
              ),
              SvgPicture.asset('assets/svg/arrow_forward.svg')
            ],
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
            features: ['편리성'],
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
            features: ['LG전자', '화질 좋음'],
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
            features: ['가성비', '반응속도 빠름'],
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
    required List<String> features,
    required String image,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.liteGray),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                    height: 15,
                  ),
                  SvgPicture.asset(
                    "assets/svg/crown.svg",
                    color: getCrownColor(number),
                  ),
                  Text(
                    number.toString(),
                    textAlign: TextAlign.center,
                    style:
                        AppTextStyle().robotoDescription(color: AppColor.white),
                  ),
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
              const SizedBox(
                height: 6,
              )
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
              const SizedBox(height: 6),
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
              const SizedBox(height: 6),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/star.svg',
                    height: 10,
                    width: 10,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    '$rating',
                    style: AppTextStyle().notoSansTitle(
                      color: AppColor.yellowStar,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    '($reviewsCount)',
                    style:
                        AppTextStyle().notoSansTitle(color: AppColor.textGray),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Wrap(
                spacing: 6.0,
                runSpacing: 6.0,
                children: features
                    .map(
                      (feature) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColor.liteGray,
                        ),
                        padding: const EdgeInsets.all(6),
                        child: Text(
                          feature,
                          style: AppTextStyle().notoSansBody(
                            color: AppColor.demiGray,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Color getCrownColor(int number) {
    switch (number) {
      case 1:
        return AppColor.yellowStar;
      case 2:
        return AppColor.silverCrown;
      case 3:
        return AppColor.bronzeCrown;
      default:
        return Colors.black; // Default color if needed
    }
  }
}
