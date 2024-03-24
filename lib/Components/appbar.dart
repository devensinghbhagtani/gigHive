import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Config/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 25, right: 25, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              iconSize: 30,
              color: Color.fromARGB(255, 230, 230, 230),
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Back.svg",
              ),
            ),
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
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );
}
