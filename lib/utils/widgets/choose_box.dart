import 'package:flutter/material.dart';
import 'package:hyperhire/utils/app_color.dart';
import 'package:hyperhire/utils/app_text_style.dart';

class ChooseBox extends StatelessWidget {
  final String title;
  const ChooseBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      padding: const EdgeInsets.only(left: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          50,
        ),
        border: Border.all(
          color: AppColor.demiGray,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle().notoSansBody(
              color: AppColor.demiGray,
              fontSize: 10,
            ),
          ),
          Icon(
            Icons.arrow_drop_down_outlined,
            color: AppColor.demiGray,
          )
        ],
      ),
    );
  }
}
