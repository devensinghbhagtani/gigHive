import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gighive/Config/colors.dart';
import 'package:gighive/Controller/appbarcontroller.dart';
import 'package:gighive/Pages/freelancers.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.appBarText,
      required this.isBackAvl,
      required this.isChatAvl,
      required this.isNotiAvl,
      this.wantDots,
      this.isFreelance,
      this.wantLogo});
  final bool isBackAvl;
  final String appBarText;
  final bool isChatAvl;
  final bool isNotiAvl;
  final bool? wantDots;
  final bool? isFreelance;
  final bool? wantLogo;

  @override
  Widget build(BuildContext context) {
    AppBarController appBarController = Get.put(AppBarController());
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: isFreelance == true ? Colors.white : Colors.transparent,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: primColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: SvgPicture.asset(
                      "assets/icons/gigHiveSymbol.svg",
                      width: 20,
                      color: fontColor,
                    ),
                  ),
                  Text(
                    " gigHive ",
                    style: TextStyle(
                      fontFamily: "Hibernate",
                      fontSize: 30,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              isBackAvl == true
                  ? InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        appBarController.isNotiSelected.value = true;
                        Get.back();
                      },
                      child: Container(
                        padding: EdgeInsets.all(13),
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Back.svg",
                          color: Colors.black54,
                        ),
                      ),
                    )
                  : isChatAvl == true
                      ? InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            appBarController.isNotiSelected.value = true;
                            Get.back();
                          },
                          child: Container(
                            padding: EdgeInsets.all(11),
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: notiColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/Chat.svg",
                            ),
                          ),
                        )
                      : SizedBox(
                          width: 44,
                          height: 44,
                        ),
              Text(
                "$appBarText",
                style: TextStyle(fontSize: 18),
              ),
              isNotiAvl == true
                  ? InkWell(
                      splashColor: notiColor,
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            color: notiColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: SvgPicture.asset(
                          "assets/icons/notification.svg",
                        ),
                      ),
                    )
                  : wantDots == true
                      ? InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            appBarController.isNotiSelected.value = true;
                            Get.back();
                          },
                          child: Container(
                            padding: EdgeInsets.all(13),
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/dots.svg",
                              color: Colors.black54,
                            ),
                          ),
                        )
                      : SizedBox(
                          width: 44,
                          height: 44,
                        ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );
}
