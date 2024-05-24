
import 'package:ageloc/pages/dashboard/buildTransformation.dart';
import 'package:ageloc/pages/dashboard/build_heading.dart';
import 'package:ageloc/pages/dashboard/build_physicalindex.dart';
import 'package:ageloc/pages/dashboard/build_row_comment.dart';
import 'package:flutter/material.dart';
class DashboardIndex extends StatefulWidget {
  const DashboardIndex({super.key});

  @override
  State<DashboardIndex> createState() => DashboardIndexState();
}

class DashboardIndexState extends State<DashboardIndex> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            BuildHeading(),
            BuildPhysicalIndex(),
            BuildRowComment(),
            SizedBox(height: 30,),
            BuildTransformation(),
          ],
        ),
      ),
    );
  }
}
