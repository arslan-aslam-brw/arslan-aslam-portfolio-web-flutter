import 'package:flutter/material.dart';
import 'package:arslan_aslam/changes/links.dart';
import 'package:arslan_aslam/core/util/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Developed by "),
            InkWell(
              onTap: () => openURL(gitHub),
              child: const Text(
                " Arslan Aslam ❤️",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(" © 2024"),
          ],
        ),
      ),
    );
  }
}
