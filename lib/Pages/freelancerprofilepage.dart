import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Components/FreelancerWork.dart';
import 'package:gighive/Components/appbar.dart';
import 'package:gighive/Components/coursetile.dart';
import 'package:gighive/Components/freelancepw.dart';
import 'package:gighive/Components/freelancerstile.dart';
import 'package:gighive/Components/maincoursetile.dart';
import 'package:gighive/Components/reviewtile.dart';
import 'package:gighive/Components/serviceselector.dart';
import 'package:gighive/Components/stars.dart';
import 'package:gighive/Config/colors.dart';

class FreelancerProfilePage extends StatelessWidget {
  const FreelancerProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(
        isNotiAvl: false,
        appBarText: "Profile",
        isBackAvl: true,
        isChatAvl: false,
        wantDots: true,
        isFreelance: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 290,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/pfp1.png",
                        width: 160,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Soroushnrz",
                          style: TextStyle(fontSize: 23),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/icons/verified.svg"),
                      ],
                    ),
                    SizedBox(
                      width: 280,
                      child: Text(
                        "“It is a long established fact that a reader will be”",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            fontStyle: FontStyle.italic,
                            height: 1.2),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stars(),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 25,
                  right: 25,
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Work/Porfolio",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 190,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return FreelancerWork();
                          },
                        ),
                      ),
                      ServiceSelector(
                        firstRate: "100",
                        SecondRate: "200",
                        ThirdRate: "322",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Reviews",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: double.infinity,
                        height: 90,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return ReviewTile();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
