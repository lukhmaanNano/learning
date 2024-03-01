import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        controller:scrollController,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
               SizedBox(height:90),
                Text(
                  "“Licensed Certified Public Accountant with 10+ years of experience in budget analysis, financial audits, and forensic accounting. Created financial reports within a five-person finance team and managed a 500,000 budget. Over the two years working there, helped cut annual company expenses by 15%.”"
              ),
                SizedBox(height:30),
               Text("🛸",
                  style:TextStyle(fontSize:120),
                  textAlign:TextAlign.center).animate(
                adapter: ScrollAdapter(scrollController,end:500),
              ).rotate(begin: 0.0,end:0.05)
               .shake(hz:3,rotation: 0.25)
               .shakeX(hz:2,amount: 100,curve:Curves.easeInOut)
               .moveY(end: 700),
                SizedBox(height:30),
                Text(
                  "“Dedicated financial analyst with a track record of successful investments. 5+ years of experience in investment banking, with a focus on the oil industry. Responsible for analyzing potential investments, as well as conducting industry, market, and company-specific research. MBA in Finance.”"
              ),
               SizedBox(height:30),
               Text(
                  "“Bank teller with 2+ years of experience in client-facing roles at Bank X, where I handled customer transactions, cross-selling bank products, and keeping customers happy by providing a professional and efficient service. Followed strict and safe deposit box operations guidelines and processed 100+ customer transactions daily.”"
              ),
               SizedBox(height:30),
               Text(
                  "“Experienced Banker with 5 years of expertise in personal and small business banking. Managed a portfolio of high-value accounts, increasing client satisfaction and financial performance. Skilled in financial advising, loan processing, and risk management. Committed to helping clients achieve their financial goals with tailored solutions.”"
              ),
               SizedBox(height:30),
               Text(
                  "“Dedicated financial analyst with a track record of successful investments. 5+ years of experience in investment banking, with a focus on the oil industry. Responsible for analyzing potential investments, as well as conducting industry, market, and company-specific research. MBA in Finance.”"
              ),
                SizedBox(height:30),
                Text(
                  "“Bank teller with 2+ years of experience in client-facing roles at Bank X, where I handled customer transactions, cross-selling bank products, and keeping customers happy by providing a professional and efficient service. Followed strict and safe deposit box operations guidelines and processed 100+ customer transactions daily.”"
              ),
               SizedBox(height:30),
               Text(
                  "“Experienced Banker with 5 years of expertise in personal and small business banking. Managed a portfolio of high-value accounts, increasing client satisfaction and financial performance. Skilled in financial advising, loan processing, and risk management. Committed to helping clients achieve their financial goals with tailored solutions.”"
              )
            ].animate(
              // onPlay: (controller)=>controller.loop(count:1,reverse: true),
                interval:.250.seconds)
                .slideX(
                begin:300,
                duration: 1300.ms,
                curve: Curves.easeOutExpo),
          ),
        )
      )
    );
  }
}
