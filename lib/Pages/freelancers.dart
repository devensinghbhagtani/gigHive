import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Components/appbar.dart';
import 'package:gighive/Components/freelancechips.dart';
import 'package:gighive/Components/freelancepw.dart';
import 'package:gighive/Components/freelancerstile.dart';
import 'package:gighive/Components/pageheader.dart';
import 'package:gighive/Config/colors.dart';
import 'package:gighive/Pages/homepage.dart';

class FreelancersPage extends StatelessWidget {
  const FreelancersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(
        isNotiAvl: true,
        appBarText: "Freelancers",
        isBackAvl: true,
        isChatAvl: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(13)),
                child: SearchBar(
                  elevation: MaterialStatePropertyAll(0),
                  backgroundColor: MaterialStatePropertyAll(bgColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  leading: SvgPicture.asset(
                    "assets/icons/Search.svg",
                    color: Colors.black87,
                  ),
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.fromLTRB(20, 0, 20, 0)),
                  hintText: "Search Freelancers",
                  hintStyle: MaterialStatePropertyAll(TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      fontFamily: "Poppins")),
                  textStyle: MaterialStatePropertyAll(TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      fontFamily: "Poppins")),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FreelanceChip(
                      chipText: "All",
                    ),
                    FreelanceChip(
                      chipText: "Design",
                    ),
                    FreelanceChip(
                      chipText: "Social Media",
                    ),
                    FreelanceChip(
                      chipText: "Video Editing",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "532 founds",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w200),
                  ),
                  Row(
                    children: [
                      Text(
                        "Default",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      SvgPicture.asset("assets/icons/arrow.svg"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: 360 / 250,
                  mainAxisSpacing: 10,
                  children: List.generate(
                    9,
                    (index) => FreelancersTile(),
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
