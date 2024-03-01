import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
          child: SvgPicture.asset(
              "assets/svg/search.svg",height:80)
              .animate(
              onPlay: (controller)=>controller.loop(count:5,reverse: true)
              )
              .shimmer(delay:400.ms,duration:1800.ms)
              .shake(hz:4,curve:Curves.easeInOutCubic)
              .scaleXY(end:1.1,duration:600.ms)
              .tint(color:Colors.purple)
              .then(delay:600.ms)
              .scaleXY(end:1/1.1)
              .tint(color:Colors.transparent)
      )
    );
  }
}

