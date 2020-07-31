import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:velocity_x/velocity_x.dart';

class Section2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Vx.white,
      
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(3, 3), blurRadius: 30)
          ]),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: VStack([
        ResponsiveRowColumn(
          rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          columnCrossAxisAlignment: CrossAxisAlignment.center,
          columnMainAxisSize: MainAxisSize.min,
          rowPadding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
          columnPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          columnSpacing: 50,
          rowSpacing: 50,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              rowFit: FlexFit.tight,
              child: subWidget(
                  Icons.landscape, "Got a dog", "We'll bring a dog car seat"),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              rowFit: FlexFit.tight,
              child: subWidget(
                  Icons.landscape, "Got a dog", "We'll bring a dog car seat"),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              rowFit: FlexFit.tight,
              child: subWidget(
                  Icons.landscape, "Got a dog", "We'll bring a dog car seat"),
            ),
          ],
        )
      ]),
    );
  }
}

Widget subWidget(IconData icon, String title, String text) => Container(
        child: Row(
      children: [
        sub1Icon(
          IconButton(
            icon: Icon(icon),
            onPressed: () {},
          ),
          Vx.white,
        ),
        Column(
          children: [
            Container(
                    alignment: Alignment.topLeft,
                    child: title.text.blue900.extraBold.size(15).make())
                .pOnly(top: 20, bottom: 20),
            Container(
                alignment: Alignment.topLeft,
                child: text.text.gray900.thin.light.center.heightRelaxed
                    .letterSpacing(1)
                    .make()),
          ],
        )
      ],
    ));

Widget sub1Icon(Widget icon, Color color) => Container(
  alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(2, 3), blurRadius: 30)
          ]),
      child: CircleAvatar(
        maxRadius: 25,
        backgroundColor: color,
        child: icon,
      ),
    );
