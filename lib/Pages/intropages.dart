import 'package:flutter/material.dart';
import 'package:gighive/Config/colors.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/pageone.png"),
                Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Empower Your Skills with",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Learning Excellence",
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                          "Explore a world of tailored courses by freelancers. From coding to creative arts, find the best path to enhance your skills.",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w200),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        color: primColor,
                        width: 100,
                        height: 7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 200,
              top: 730,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(100)),
                child: Container(
                  decoration: BoxDecoration(
                      color: primColor,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              width: 70,
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
