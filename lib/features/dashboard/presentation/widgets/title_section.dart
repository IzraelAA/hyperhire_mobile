import 'package:flutter/material.dart';
import 'package:hyperhire/utils/app_color.dart';
import 'package:hyperhire/utils/app_text_style.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final EdgeInsets? padding;

  const TitleSection({
    required this.title,
    required this.subtitle,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: AppTextStyle().notoSansBody(
                fontSize: 12,
                color: AppColor.greyProfile,
              )),
          Text(
            subtitle,
            style: AppTextStyle().notoSansHeading(),
          ),
        ],
      ),
    );
  }
}
