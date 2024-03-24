import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Config/colors.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(13),
          width: 44,
          height: 44,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 230, 230),
              borderRadius: BorderRadius.circular(100)),
          child: SvgPicture.asset(
            "assets/icons/Back.svg",
          ),
        ),
        Text(
          "Freelancers",
          style: TextStyle(fontSize: 18),
        ),
        Container(
          padding: EdgeInsets.all(12),
          width: 44,
          height: 44,
          decoration: BoxDecoration(
              color: notiColor, borderRadius: BorderRadius.circular(100)),
          child: SvgPicture.asset(
            "assets/icons/notification.svg",
          ),
        ),
      ],
    );
  }
}
