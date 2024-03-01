import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:SvgPicture.asset("assets/svg/dashboard.svg")
            .animate()
            .custom(
            duration: 1200.ms,
            curve:Curves.easeInExpo,
            builder: (BuildContext context, double value, Widget child) {
            return ClipRect(
              child:child,
              // clipper: StarClipper(value,0),
            );
            }
        )
      )
    );
  }
}
