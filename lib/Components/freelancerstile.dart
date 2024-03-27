import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gighive/Components/freelancedomain.dart';
import 'package:gighive/Components/freelancepw.dart';
import 'package:gighive/Config/colors.dart';
import 'package:gighive/Controller/freelancetilecontroller.dart';
import 'package:gighive/Pages/freelancerprofilepage.dart';

class FreelancersTile extends StatelessWidget {
  const FreelancersTile({super.key});

  @override
  Widget build(BuildContext context) {
    FreelanceTileController freelanceTileController =
        Get.put(FreelanceTileController());
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Get.to(FreelancerProfilePage());
        },
        child: Container(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: divColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/pfp1.png",
                            width: 75,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Soroushnrz",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                    Column(
                      children: [
                        Obx(
                          () => InkWell(
                              onTap: () {
                                freelanceTileController.isLikeClicked.value =
                                    !freelanceTileController
                                        .isLikeClicked.value;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  freelanceTileController.isLikeClicked.value ==
                                          true
                                      ? "assets/icons/like2.svg"
                                      : "assets/icons/Like.svg",
                                  width: 15,
                                ),
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //Second Container
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        FreelanceDomain(),
                        FreelanceDomain(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        FreelancePrevWork(),
                        SizedBox(
                          width: 5,
                        ),
                        FreelancePrevWork(),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
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
