import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Config/colors.dart';

class FreelancerWork extends StatelessWidget {
  const FreelancerWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/drake.png",
                    fit: BoxFit.cover,
                    width: 220,
                    height: 140,
                  ),
                ),
                Positioned(
                  left: 183,
                  top: 105,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: notiColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: SvgPicture.asset(
                      "assets/icons/link.svg",
                      width: 18,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 4,
            ),
            SizedBox(
              width: 200,
              child: Text(
                "Facebook Expo 2021-22",
                maxLines: 1,
                style: TextStyle(
                    height: 1.2,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w200,
                    fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
