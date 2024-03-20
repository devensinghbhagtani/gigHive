import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/star.svg",
          width: 13,
        ),
        SizedBox(
          width: 2,
        ),
        SvgPicture.asset(
          "assets/icons/star.svg",
          width: 13,
        ),
        SizedBox(
          width: 2,
        ),
        SvgPicture.asset(
          "assets/icons/star.svg",
          width: 13,
        ),
        SizedBox(
          width: 2,
        ),
        SvgPicture.asset(
          "assets/icons/star.svg",
          width: 13,
        ),
      ],
    );
  }
}
