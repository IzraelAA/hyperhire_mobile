import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/utils/app_color.dart';
import 'package:hyperhire/utils/app_text_style.dart';
import 'package:hyperhire/utils/widgets/choose_box.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200], // Warna latar belakang footer
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LOGO Inc.',
            style: AppTextStyle().notoSansSubtitle(
              color: AppColor.demiGray,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '회사 소개',
                style: AppTextStyle().notoSansBody(
                  color: AppColor.demiGray,
                  fontSize: 13,
                ),
              ),
              Container(
                width: 1,
                height: 6,
                color: AppColor.textGray,
              ),
              Text(
                '인재 채용',
                style: AppTextStyle().notoSansBody(
                  color: AppColor.demiGray,
                  fontSize: 13,
                ),
              ),
              Container(
                width: 1,
                height: 6,
                color: AppColor.textGray,
              ),
              Text(
                '기술 블로그',
                style: AppTextStyle().notoSansBody(
                  color: AppColor.demiGray,
                  fontSize: 13,
                ),
              ),
              Container(
                width: 1,
                height: 6,
                color: AppColor.textGray,
              ),
              Text(
                '리뷰 저작권',
                style: AppTextStyle().notoSansBody(
                  color: AppColor.demiGray,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/svg/plane.svg'),
                  const SizedBox(width: 4),
                  Text(
                    'review@logo.com',
                    style: AppTextStyle().notoSansBody(
                      color: AppColor.demiGray,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const ChooseBox(title: "KOR")
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Divider(
            color: AppColor.textGray,
            thickness: 1,
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            '@2022-2022 LOGO Lab, Inc. (주)아무개 서울시 강남구',
            style: AppTextStyle().notoSansBody(
              color: AppColor.demiGray,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
