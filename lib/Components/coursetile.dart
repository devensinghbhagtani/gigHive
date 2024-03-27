import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gighive/Config/colors.dart';

class CourseTile extends StatelessWidget {
  const CourseTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        Get.back();
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: const Image(
                    height: 140,
                    width: 140,
                    image: AssetImage("assets/images/drake.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "UI/UX",
                      style: TextStyle(),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Jannat Doe",
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 100,
            top: 120,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: bgColor, borderRadius: BorderRadius.circular(100)),
              child: SvgPicture.asset(
                "assets/icons/play.svg",
                width: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
