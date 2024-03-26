import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gighive/Components/pricetagfreelancer.dart';
import 'package:gighive/Components/serviceselectorcontent.dart';
import 'package:gighive/Config/colors.dart';
import 'package:gighive/Controller/serviceselectorconroller.dart';

class ServiceSelector extends StatelessWidget {
  const ServiceSelector(
      {super.key,
      required this.firstRate,
      required this.SecondRate,
      required this.ThirdRate});
  final String firstRate;
  final String SecondRate;
  final String ThirdRate;

  @override
  Widget build(BuildContext context) {
    ServiceSelectorController serviceSelectorController =
        Get.put(ServiceSelectorController());
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(color: primColor),
                  child: Obx(
                    () => Text(
                      serviceSelectorController.isFirstSelected.value == true
                          ? "Basic Package"
                          : serviceSelectorController.isSecondSelected.value ==
                                  true
                              ? "Not a Basic Package"
                              : "Premium Package",
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: Obx(
                  () => Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              serviceSelectorController.isFirstSelected.value =
                                  true;
                              serviceSelectorController.isSecondSelected.value =
                                  false;
                            },
                            child: Container(
                              width: 110,
                              alignment: Alignment.center,
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                              decoration: BoxDecoration(
                                  color: serviceSelectorController
                                              .isFirstSelected.value ==
                                          true
                                      ? notiColor
                                      : Colors.transparent,
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text("\$$firstRate"),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              serviceSelectorController.isFirstSelected.value =
                                  false;
                              serviceSelectorController.isSecondSelected.value =
                                  true;
                            },
                            child: Container(
                              width: 110,
                              alignment: Alignment.center,
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                              decoration: BoxDecoration(
                                  color: serviceSelectorController
                                              .isSecondSelected.value ==
                                          true
                                      ? notiColor
                                      : Colors.transparent,
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text("\$$SecondRate"),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              serviceSelectorController.isFirstSelected.value =
                                  false;
                              serviceSelectorController.isSecondSelected.value =
                                  false;
                            },
                            child: Container(
                              width: 110,
                              alignment: Alignment.center,
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                              decoration: BoxDecoration(
                                  color: serviceSelectorController
                                                  .isFirstSelected.value ==
                                              false &&
                                          serviceSelectorController
                                                  .isSecondSelected.value ==
                                              false
                                      ? notiColor
                                      : Colors.transparent,
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text("\$$ThirdRate"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ServiceSelectorContent(
                          fr: firstRate, sr: SecondRate, tr: ThirdRate),
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
