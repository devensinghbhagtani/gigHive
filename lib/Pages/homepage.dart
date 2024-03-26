import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Components/appbar.dart';
import 'package:gighive/Components/coursetile.dart';
import 'package:gighive/Components/freelancerstile.dart';
import 'package:gighive/Components/pageheader.dart';
import 'package:gighive/Components/reviewtile.dart';
import 'package:gighive/Config/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isNotiAvl: true,
        appBarText: "Home",
        isBackAvl: false,
        isChatAvl: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // PageHeader(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Recommended Courses",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
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
                  height: 20,
                ),
                const Text(
                  "Top Freelancers of the Week",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 8,
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
                Container(
                  width: double.infinity,
                  height: 90,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return ReviewTile();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
