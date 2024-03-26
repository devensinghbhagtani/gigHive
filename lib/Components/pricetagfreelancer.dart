import 'package:flutter/material.dart';
import 'package:gighive/Config/colors.dart';

class PriceTag extends StatelessWidget {
  const PriceTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(35, 8, 35, 8),
          decoration: BoxDecoration(
              color: notiColor,
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: Text("\$100"),
        ),
      ],
    );
  }
}
