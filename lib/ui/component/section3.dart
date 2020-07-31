import 'package:flutter/material.dart';


import 'package:responsive_framework/responsive_framework.dart';
import 'package:velocity_x/velocity_x.dart';


class Section3 extends StatefulWidget {
  @override
  _Section3State createState() => _Section3State();
}

class _Section3State extends State<Section3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Vx.blue900,
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Vx.blue900, BlendMode.color),
              image: AssetImage("asset/images/2.png"),
              fit: BoxFit.cover)),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      height: 3.0,
                      width: 50,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                      width: 300,
                      alignment: Alignment.topLeft,
                      child: "Always Drive On Identical Prius"
                          .text
                          .white
                          .extraBold
                          .size(25)
                          .make()),
                  Container(
                          alignment: Alignment.topLeft,
                          width: 350,
                          margin: EdgeInsets.only(left: 40),
                          child:
                              "The is the urgent need to educate the female child  because  educationists  all  over the world agree that if you educate a man, you educate an individual whereas if you educate a woman, you educate a whole nation. The woman is the mother of the society. To grow, a man has sit at the fit of a woman to be nurtured and to be taught the mysteries of life. We should educate the girl child to acquire more scientific ways of teaching the man"
                                  .text
                                  .green100
                                  .thin
                                  .light
                                  .justify
                                  .heightRelaxed
                                  .letterSpacing(1)
                                  .make())
                      .pOnly(top: 10),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.0, vertical: 30.0),
                      child: Container(
                        height: 1.0,
                        width: 300.0,
                        color: Vx.gray500,
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      width: 350,
                      margin: EdgeInsets.only(left: 40),
                      child:
                          "educationists  all  over the world agree that if you educate a man, you educate an individual whereas if you educate a woman, you educate a whole nation. The woman is the mother of the society. To grow, a man has sit at the fit of a woman to be nurtured and to be taught the mysteries of life."
                              .text
                              .green100
                              .thin
                              .light
                              .justify
                              .heightRelaxed
                              .letterSpacing(1)
                              .make()),
                ],
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              rowFit: FlexFit.tight,
              child: Column(
                children: [
                
                    Container(
                  child: Image(
                    image:AssetImage("asset/images/car.png") ,)
                ),
                  Container(
                  child: Image(
                    image:AssetImage("asset/images/carcar.png") ,)
                ).pOnly(top:60)
                  // Padding(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 3.0, vertical: 20),
                  //   child: Container(
                  //     height: 3.0,
                  //     width: 50,
                  //     color: Colors.green,
                  //   ),
                  // ),
                  // Container(
                  //     alignment: Alignment.center,
                  //     child: "Simple and handy process"
                  //         .text
                  //         .white
                  //         .extraBold
                  //         .size(25)
                  //         .make()),
                  // Container(
                  //         alignment: Alignment.center,
                  //         width: 550,
                  //         child:
                  //             "All-inclusive, usage-based car subscriptions. Monthly plans based on how much you drive that includes parking,insurance,maintenance, and more."
                  //                 .text
                  //                 .white
                  //                 .thin
                  //                 .light
                  //                 .justify
                  //                 .heightRelaxed
                  //                 .letterSpacing(1)
                  //                 .make())
                  //     .p20(),
                ],
              ),
            )
          ],
        )
      ]),
    ).pOnly(top: 5);
  }
}
