import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gighive/Config/colors.dart';
import 'package:gighive/Controller/serviceselectorconroller.dart';

class ServiceSelectorContent extends StatelessWidget {
  const ServiceSelectorContent(
      {super.key, required this.fr, required this.sr, required this.tr});
  final String fr;
  final String sr;
  final String tr;

  @override
  Widget build(BuildContext context) {
    ServiceSelectorController serviceSelectorController =
        Get.put(ServiceSelectorController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Revision:"),
                SizedBox(
                  height: 4,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                    style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w200),
                  ),
                )
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset(
                  "assets/images/drake.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
          decoration: BoxDecoration(
              color: notiColor,
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            serviceSelectorController.isFirstSelected.value == true
                ? "Continue (\$$fr)"
                : serviceSelectorController.isSecondSelected.value == true
                    ? "Continue (\$$sr)"
                    : "Continue (\$$tr)",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
