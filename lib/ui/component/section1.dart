import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:velocity_x/velocity_x.dart';

import 'block.dart';
import 'cuver_painter.dart';
import 'section2.dart';

class Section1 extends StatelessWidget {
  const Section1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Vx.indigo100,
       
      ),
      child: Stack(
        // alignment: Alignment.bottomCenter,
        fit: StackFit.loose,
        children: [
          VStack([
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 20),
                  child: Container(
                    height: 3.0,
                    width: 50,
                    color: Colors.green,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    child: "Simple and handy process"
                        .text
                        .blue900
                        .extraBold
                        .size(25)
                        .make()),
                Container(
                        alignment: Alignment.center,
                        width: 550,
                        child:
                            "All-inclusive, usage-based car subscriptions. Monthly plans based on how much you drive that includes parking,insurance,maintenance, and more."
                                .text
                                .gray900
                                .thin
                                .light
                                .justify
                                .heightRelaxed
                                .letterSpacing(1)
                                .make())
                    .p20(),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            ResponsiveRowColumn(
                rowColumn:
                    !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
                rowCrossAxisAlignment: CrossAxisAlignment.start,
                columnCrossAxisAlignment: CrossAxisAlignment.center,
                columnMainAxisSize: MainAxisSize.min,
                rowPadding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
                columnPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                columnSpacing: 50,
                rowSpacing: 50,
                children: [
                  ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: subWidget(
                          context,
                          "Text when you want your car no app needed just an online account. Real human operators",
                          Icons.phone_iphone,
                          "Text us")),
                  ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: subWidget(
                              context,
                              "Your car will arrive at your door - clean and fully fueled",
                              Icons.local_airport,
                              "We deliver")
                          .pOnly(top: 80)),
                  ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: subWidget(
                          context,
                          "Hop in and go with you full insurance, FastTrak, Phone acessories and unlimited mileage",
                          Icons.landscape,
                          "You drive")),
                  ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: subWidget(
                              context,
                              "it's yours for a hours or a few days.Return on your own time,anywhere.We'll gas and clean it",
                              Icons.local_parking,
                              "We pick it up")
                          .pOnly(top: 80)),
                ])
          ]),
          ResponsiveVisibility(
              visible: false,
              visibleWhen: [Condition.equals(name: DESKTOP)],
              child: Section2().pOnly(top: 600))
        ],
      ),
    );
  }

  Column subWidget(
      BuildContext context, String text, IconData icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconDesign(
            IconButton(
              icon: Icon(icon),
              onPressed: () {},
            ),
            Vx.white,
            context),
        Container(
                alignment: Alignment.center,
                child: title.text.blue900.extraBold.size(15).make())
            .pOnly(top: 20, bottom: 20),
        Container(
            alignment: Alignment.center,
            child: text.text.gray900.thin.light.center.heightRelaxed
                .letterSpacing(1)
                .make()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 10.0),
          child: Container(
            height: 1.0,
            width: 100.0,
            color: Vx.gray500,
          ),
        ),
        // .pOnly(left: 50),
      ],
    );
  }
}

Widget iconDesign(Widget icon, Color color, context) => Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(2, 3), blurRadius: 30)
          ]),
      child: CircleAvatar(
        maxRadius: 35,
        backgroundColor: color,
        child: icon,
      ),
    );
