import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gighive/Components/pageheader.dart';
import 'package:gighive/Config/colors.dart';

class FreelancersPage extends StatelessWidget {
  const FreelancersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 15),
          child: PageHeader(),
        ),
      ),
    );
  }
}
