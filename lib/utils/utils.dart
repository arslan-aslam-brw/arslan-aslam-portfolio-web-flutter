import 'package:arslan_aslam/sections/contact/contact.dart';
import 'package:arslan_aslam/sections/home/home.dart';
import 'package:arslan_aslam/sections/portfolio/portfolio.dart';
import 'package:arslan_aslam/sections/services/services.dart';
import 'package:arslan_aslam/widgets/footer.dart';
import 'package:flutter/material.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    //About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
