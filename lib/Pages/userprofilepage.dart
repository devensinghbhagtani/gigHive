import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Components/appbar.dart';
import 'package:gighive/Components/userprofilebars.dart';
import 'package:gighive/Config/colors.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(
        appBarText: "User profile",
        isBackAvl: false,
        isChatAvl: false,
        isNotiAvl: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/pfp1.png",
                          width: 180,
                        ),
                      ),
                      // PFP
                      Positioned(
                        left: 140,
                        top: 140,
                        child: Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              color: notiColor,
                              borderRadius: BorderRadius.circular(100)),
                          child: SvgPicture.asset(
                            "assets/icons/edit.svg",
                            width: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Daniel Martinez",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "+123 856479683",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  UserProfileBars(
                    iconAdd: "editprofile.svg",
                    title: "Edit Profile",
                  ),
                  UserProfileBars(
                    iconAdd: "favorites.svg",
                    title: "Favorites",
                  ),
                  UserProfileBars(
                    iconAdd: "settings.svg",
                    title: "Settings",
                  ),
                  UserProfileBars(
                    iconAdd: "help.svg",
                    title: "Help and Support",
                  ),
                  UserProfileBars(
                    iconAdd: "terms.svg",
                    title: "Terms and Conditions",
                  ),
                  UserProfileBars(
                    iconAdd: "logout.svg",
                    title: "Log Out",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
