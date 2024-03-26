import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Components/stars.dart';
import 'package:gighive/Config/colors.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 330,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: morelighter, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/pfp2.png",
                  width: 70,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jannat Doe",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Stars(),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "“It is a long established fact that a\n reader will be”",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
