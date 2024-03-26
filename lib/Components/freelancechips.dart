import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gighive/Config/colors.dart';

class FreelanceChip extends StatelessWidget {
  const FreelanceChip({super.key, required this.chipText});
  final String chipText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(13, 6, 13, 6),
            decoration: BoxDecoration(
              color: notiColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "$chipText",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ),
        SizedBox(
          width: 6,
        )
      ],
    );
  }
}
