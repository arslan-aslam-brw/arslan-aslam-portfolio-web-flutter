import 'package:flutter/material.dart';
import 'package:arslan_aslam/core/configs/configs.dart';
import 'package:arslan_aslam/core/res/responsive.dart';
import 'package:flutter_svg/svg.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    //
    var textSty = TextStyle(
      color: theme.textColor,
      fontWeight: FontWeight.w100,
      fontSize: Responsive.isDesktop(context) ? 32 : 20,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("<", style: textSty),
        SvgPicture.asset('assets/icons/apple.svg', height: 50, width: 50),
        Image.asset('assets/imgs/flutter.png', height: 50, width: 50),
        SvgPicture.asset('assets/icons/android.svg', height: 50, width: 50),
        Text(Responsive.isDesktop(context) ? "/>\t\t" : "/>", style: textSty),
      ],
    );
  }
}
