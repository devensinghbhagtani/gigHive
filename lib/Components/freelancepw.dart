import 'package:flutter/material.dart';
import 'package:gighive/Config/colors.dart';

class FreelancePrevWork extends StatelessWidget {
  const FreelancePrevWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 168,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/drake.png"), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
