import 'package:arslan_aslam/core/res/responsive.dart';
import 'package:arslan_aslam/utils/services_utils.dart';
import 'package:arslan_aslam/widgets/custom_text_heading.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:arslan_aslam/changes/strings.dart';
import 'package:arslan_aslam/core/color/colors.dart';
import 'package:arslan_aslam/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

part 'services_desktop.dart';
part 'services_mobile.dart';
part 'widgets/_services_card.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
