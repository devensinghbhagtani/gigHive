import 'package:flutter/material.dart';

class FreelanceDomain extends StatelessWidget {
  const FreelanceDomain({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(13, 3, 13, 3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.black,
              )),
          child: Text(
            "PRODUCT DESIGNER",
            style: TextStyle(fontSize: 10),
          ),
        ),
        SizedBox(
          width: 6,
        )
      ],
    );
  }
}
