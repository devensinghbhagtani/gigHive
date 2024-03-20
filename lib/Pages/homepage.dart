import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Components/coursetile.dart';
import 'package:gighive/Components/freelancerstile.dart';
import 'package:gighive/Components/reviewtile.dart';
import 'package:gighive/Config/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        color: notiColor,
                        borderRadius: BorderRadius.circular(100)),
                    child: SvgPicture.asset(
                      "assets/icons/notification.svg",
                      width: 17,
                    ),
                  )
                ],
              ),
              const Text(
                "Recommended Courses",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseTile(),
                    SizedBox(
                      width: 5,
                    ),
                    CourseTile(),
                    SizedBox(
                      width: 5,
                    ),
                    CourseTile(),
                    SizedBox(
                      width: 5,
                    ),
                    CourseTile(),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Top Freelancers of the Week",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FreelancersTile(),
                    SizedBox(
                      width: 20,
                    ),
                    FreelancersTile(),
                    SizedBox(
                      width: 20,
                    ),
                    FreelancersTile(),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "Reviews",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReviewTile(),
                    SizedBox(
                      width: 10,
                    ),
                    ReviewTile(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
