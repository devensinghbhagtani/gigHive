import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gighive/Components/appbar.dart';
import 'package:gighive/Components/freelancechips.dart';
import 'package:gighive/Components/maincoursetile.dart';
import 'package:gighive/Config/colors.dart';
import 'package:gighive/Controller/coursescontroller.dart';
import 'package:gighive/Components/educatortile.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    CoursesController coursesController = Get.put(CoursesController());
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(
        isNotiAvl: true,
        appBarText: "Courses",
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  hintText: "Search Courses",
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
                  child: Obx(
                    () => Row(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                coursesController.isCoursesSelected.value =
                                    true;
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(13, 6, 13, 6),
                                decoration: BoxDecoration(
                                  color: coursesController
                                              .isCoursesSelected.value ==
                                          true
                                      ? notiColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  "Courses",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                coursesController.isCoursesSelected.value =
                                    false;
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(13, 6, 13, 6),
                                decoration: BoxDecoration(
                                  color: coursesController
                                              .isCoursesSelected.value ==
                                          false
                                      ? notiColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  "Educators",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
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
                child:
                    Obx(() => coursesController.isCoursesSelected.value == true
                        ? GridView.count(
                            crossAxisCount: 1,
                            childAspectRatio: 360 / 223,
                            mainAxisSpacing: 10,
                            children: List.generate(
                              9,
                              (index) => MainCourseTile(),
                            ),
                          )
                        : GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 15,
                            childAspectRatio: 170 / 209,
                            children: List.generate(
                              9,
                              (index) => EducatorTile(),
                            ),
                          )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
