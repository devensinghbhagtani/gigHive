import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gighive/Components/stars.dart';
import 'package:gighive/Config/colors.dart';

class EducatorTile extends StatelessWidget {
  const EducatorTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 170,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 130,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/drake.png"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(left: 12, top: 90, child: Stars()),
                            Positioned(
                                left: 12,
                                top: 103,
                                child: Text(
                                  "Abdul Baari",
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 5, 10, 15),
                          width: 170,
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "Music and Art for Kids aged 6-12 years old",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                decoration: BoxDecoration(
                                    color: notiColor,
                                    border: Border.all(width: 0.5),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  "Go to the courses",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 11),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
