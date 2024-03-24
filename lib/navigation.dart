import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gighive/Config/colors.dart';
import 'package:gighive/Pages/homepage.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationController navigationController = Get.put(NavigationController());
    return Scaffold(
      body: Obx(
        () => navigationController
            .pages[navigationController.selectedIndex.value],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: primColor,
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: bgColor,
        items: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(
              "assets/icons/Home.svg",
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset("assets/icons/Freelancer.svg"),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset("assets/icons/Courses.svg"),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset("assets/icons/Profile.svg"),
          ),
        ],
        onTap: (index) {
          navigationController.selectedIndex.value = index;
        },
      ),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final pages = [
    HomePage(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.deepOrange,
    )
  ];
}
