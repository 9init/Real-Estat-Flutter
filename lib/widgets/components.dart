import 'package:real_estate_mania_yt/resources/color_manager.dart';
import 'package:real_estate_mania_yt/resources/font_manager.dart';
import 'package:real_estate_mania_yt/resources/style_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/car_model.dart';

class Space extends StatelessWidget {
  double width, height;

  Space({Key? key, this.width = 15, this.height = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}

class HeaderWithDivider extends StatelessWidget {
  String title;

  HeaderWithDivider({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          thickness: 1,
          color: ColorManager.primaryLight,
        )),
        Text(
          '    $title   ',
          style: getMediumStyle(
              color: ColorManager.primary, fontSize: FontSize.f20),
        ),
        const Expanded(
            child: Divider(
          thickness: 1,
          color: ColorManager.primaryLight,
        )),
      ],
    );
  }
}