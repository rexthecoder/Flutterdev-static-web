import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:velocity_x/velocity_x.dart';

class Section4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Vx.indigo100,
        ),
        child: VStack([
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  child: "Monthly plans for less than a parking space"
                      .text
                      .blue900
                      .center
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
                          context,
                          "it's yours for a hours or a few days",
                          "educationists all over the world agree that if you educate a man",
                          Icons.local_parking,
                          "Freedom")
                      .card
                      .roundedNone
                      .make().whThreeForth(context)),
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: subWidget(
                          context,
                          "it's yours for a hours or a few days",
                          "educationists all over the world agree that if you educate a man",
                          Icons.local_parking,
                          "Gateway")
                      .card
                      .roundedNone
                      .elevation(70)
                      .make()
                      .whThreeForth(context)),
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: subWidget(
                          context,
                          "it's yours for a hours or a few days",
                          "educationists all over the world agree that if you educate a man",
                          Icons.local_parking,
                          "FlexPass")
                      .card
                      .roundedNone
                      .make().whThreeForth(context)),
            ],
          )
        ]));
  }
}

Column subWidget(BuildContext context, String text, String text2, IconData icon,
    String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
              alignment: Alignment.center,
              child: title.text.blue900.extraBold.size(25).make())
          .pOnly(bottom: 20),
      Container(
          alignment: Alignment.center,
          child: text.text.gray900.thin.light.center.heightRelaxed
              .letterSpacing(1)
              .make()),
      Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(r"$150").text.bold.size(30).blue500.make().pOnly(top: 20),
              Text("/month")
                  .text
                  .gray900
                  .thin
                  .light
                  .heightRelaxed
                  .letterSpacing(1)
                  .make().pOnly(top:30)
            ],
          )),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 10.0),
        child: Container(
          height: 1.0,
          width: 300.0,
          color: Vx.gray500,
        ),
      ),
      Container(
              alignment: Alignment.center,
              child: text2.text.gray900.thin.light.center.heightRelaxed
                  .letterSpacing(1)
                  .make()
                  .pOnly(left: 10.0, right: 10.0))
          .pOnly(top: 30, bottom: 30),

      Container(
        alignment: Alignment.center,
        width: 150,
        height: 50,
        decoration: BoxDecoration(
            color: Vx.green400, borderRadius: BorderRadius.circular(50)),
        child: "Start with Flex".text.white.make(),
      ).pOnly(top: 20),
      Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "View Plan details".text.blue500.make(),
          Icon(
            Icons.arrow_forward,
            color: Vx.blue400,
          )
        ],
      )).pOnly(top: 20)
      // .pOnly(left: 50),
    ],
  );
}
