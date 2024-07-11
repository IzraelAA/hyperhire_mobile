import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/utils/app_color.dart';
import 'package:hyperhire/utils/app_text_style.dart';
import 'package:hyperhire/utils/widgets/choose_box.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        title: Column(
          children: [
            Text(
              '랭킹 1위',
              style: AppTextStyle()
                  .notoSansBody(color: AppColor.demiGray, fontSize: 10),
            ),
            Text(
              '베스트 리뷰어',
              style: AppTextStyle()
                  .notoSansHeading(color: AppColor.black, fontSize: 16),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          body(),
          chat(context),
        ],
      ),
    );
  }

  Widget body() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            header(),
            Container(
              color: AppColor.background,
              height: 14,
              width: double.infinity,
            ),
            product(),
            review(),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: (DecorationImage(
              image: AssetImage("assets/images/user_1.png"),
            )),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Name01',
          style: AppTextStyle().notoSansHeading(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/crown.svg'),
            const SizedBox(
              width: 5,
            ),
            Text(
              '골드',
              style:
                  AppTextStyle().notoSansSubtitle(color: AppColor.yellowStar),
            )
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColor.liteGray,
            borderRadius: BorderRadius.circular(6.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: const Text('조립컴 업체를 운영하며 리뷰를 작성합니다.'),
        ),
        const SizedBox(
          height: 28,
        ),
      ],
    );
  }

  Widget product() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 16,
            right: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '작성한 리뷰',
                    style: AppTextStyle().notoSansHeading(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '총 35개',
                    style: AppTextStyle().notoSansBody(
                      color: AppColor.greyProfile,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const ChooseBox(title: '최신순')
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Divider(
            color: AppColor.liteGray,
            height: 1,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 8,
                  right: 5,
                  left: 5,
                ),
                width: 104,
                height: 104,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.border),
                  borderRadius: BorderRadius.circular(4),
                  image: (const DecorationImage(
                    image: AssetImage("assets/images/product_review_1.png"),
                  )),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'AMD 라이젠 5 5600X 버미어 정품 멀티팩',
                      style: AppTextStyle().notoSansTitle(),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 20.0,
                          rating: 4.07,
                          direction: Axis.horizontal,
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Text(
                          '4.07',
                          style: AppTextStyle().notoSansHeading(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Divider(
            color: AppColor.liteGray,
            height: 1,
          ),
        )
      ],
    );
  }

  Widget review() {
    return Column(
      children: [
        const SizedBox(
          height: 14,
        ),
        reviewer(),
        const SizedBox(
          height: 26,
        ),
        SizedBox(
          height: 14,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (c, i) => Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "\"가격 저렴해요”",
                      style: AppTextStyle().notoSansTitle(
                        color: AppColor.greyReview,
                        fontSize: 10,
                      ),
                    ),
                  )),
        ),
        const SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              reviewContent(
                isLighting: true,
                text:
                    '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
              ),
              const SizedBox(
                height: 18,
              ),
              reviewContent(
                isLighting: false,
                text: '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37.0),
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Container(
                      height: 70,
                      width: 73,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/product_review_${index + 2}.png"))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }

  Widget reviewer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: (DecorationImage(
                image: AssetImage("assets/images/user_1.png"),
              )),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Name01"),
                Row(
                  children: [
                    RatingBarIndicator(
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 11,
                      rating: 4.07,
                      direction: Axis.horizontal,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      '2022.12.09',
                      style: AppTextStyle().notoSansBody(
                        color: AppColor.demiGray,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SvgPicture.asset('assets/svg/attachment.svg'),
        ],
      ),
    );
  }

  Widget reviewContent({required String text, required bool isLighting}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 7,
        ),
        SizedBox(
          width: 20,
          child: SvgPicture.asset(
            'assets/svg/lighting.svg',
            color: !isLighting ? AppColor.greyReview : null,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            text,
            style: AppTextStyle().notoSansBody(
              fontSize: 14,
              color: AppColor.greyProfile,
            ),
          ),
        ),
      ],
    );
  }

  Widget chat(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const Divider(
            height: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset("assets/svg/bubble_chat.svg"),
              const SizedBox(
                width: 2,
              ),
              Text("댓글 달기..",
                  style: AppTextStyle().notoSansBody(
                    color: AppColor.greyProfile,
                  )),
            ],
          ),
          SizedBox(
            height: 10 + MediaQuery.paddingOf(context).bottom,
          ),
        ],
      ),
    );
  }
}
