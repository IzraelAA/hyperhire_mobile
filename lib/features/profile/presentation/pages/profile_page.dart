import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/utils/app_color.dart';
import 'package:hyperhire/utils/app_text_style.dart';

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
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
        Container(
          child: Padding(
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
                    SizedBox(
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
                Text(
                  '최신순',
                  style: AppTextStyle().notoSansBody(
                    color: AppColor.demiGray,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: AppColor.liteGray,
          height: 1,
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 104,
                height: 104,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: (DecorationImage(
                    image: AssetImage("assets/images/product_review_1.png"),
                  )),
                ),
              ),
              Container(
                width: 187,
                height: 43,
                child: Text(
                  'AMD 라이젠 5 5600X 버미어 정품 멀티팩',
                  style: AppTextStyle().notoSansTitle(),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
        )
      ],
    );
  }

  Widget review(){
    return Column(
      children: [

      ],
    );
  }
}
