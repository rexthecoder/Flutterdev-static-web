import 'package:flutter/material.dart';
import 'package:port/const/const_colors.dart';
import 'package:port/ui/component/block.dart';
import 'package:port/ui/component/header.dart';
import 'package:port/ui/component/navbar.dart';
import 'package:port/ui/component/section1.dart';
import 'package:port/ui/component/section3.dart';
import 'package:port/ui/component/section4.dart';
import 'package:port/ui/component/section5.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePageDesign extends StatelessWidget {
  const HomePageDesign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          defaultScale: true,
          minWidth: 480,
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.resize(850, name: TABLET),
            ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          background: Container(color: ConstColor.kbgColor)),
      home: Scaffold(
        backgroundColor: ConstColor.kbgColor,
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 66), child: NavBar()),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              ResponsiveWrapper(
                  maxWidth: 1200,
                  minWidth: 1200,
                  defaultScale: true,
                  mediaQueryData: MediaQueryData(size: Size(1200, 640)),
                  child: ResponsiveConstraints(child: Header())),
              ResponsiveConstraints(
                  constraintsWhen: blockWidthConstraints, child: Section1()),
                   ResponsiveConstraints(
                  constraintsWhen: blockWidthConstraints, child: Section3()),
                    ResponsiveConstraints(
                  constraintsWhen: blockWidthConstraints, child: Section4()),
                   Footer()
                    
            
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

//  child: RepaintBoundary(child: Carousel())),
//               ResponsiveConstraints(
//                   constraintsWhen: blockWidthConstraints, child: GetStarted()),
//               ResponsiveConstraints(
//                   constraintsWhen: blockWidthConstraints, child: Features()),
//               ResponsiveConstraints(
//                   constraintsWhen: blockWidthConstraints,
//                   child: FastDevelopment()),
//               ResponsiveConstraints(
//                   constraintsWhen: blockWidthConstraints, child: BeautifulUI()),
//               ResponsiveConstraints(
//                   constraintsWhen: blockWidthConstraints,
//                   child: NativePerformance()),
//               ResponsiveConstraints(
//                   constraintsWhen: blockWidthConstraints,
//                   child: LearnFromDevelopers()),
//               ResponsiveConstraints(
//                   constraintsWhen: blockWidthConstraints,
//                   child: WhoUsesFlutter()),
//               ResponsiveConstraints(
