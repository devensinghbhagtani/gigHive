import 'package:flutter/material.dart';
import 'package:gighive/Config/colors.dart';

class BestSellerChip extends StatelessWidget {
  const BestSellerChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(17, 6, 17, 6),
      decoration: BoxDecoration(
        color: notiColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        "BESTSELLER",
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
