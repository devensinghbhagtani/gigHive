import 'package:flutter/material.dart';
import 'package:gighive/Components/bestsellerchip.dart';
import 'package:gighive/Components/stars.dart';
import 'package:gighive/Config/colors.dart';

class MainCourseTile extends StatelessWidget {
  const MainCourseTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 360,
            height: 130,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/coursebanner.png"),
              fit: BoxFit.cover,
            )),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 2, 10, 12),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Text("The Complete 2024 Web Development Bootcamp"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abdul Raazi",
                          style: TextStyle(fontSize: 10),
                        ),
                        Row(
                          children: [
                            Text(
                              "4.7",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Stars(),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "(2002)",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    BestSellerChip(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
