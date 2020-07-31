import 'package:flutter/material.dart';
import 'package:port/const/const_colors.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:velocity_x/velocity_x.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.kbgColor,
      appBar: VxAppBar(
        backgroundColor: ConstColor.kbgColor,
        elevation: 0,
        leading: ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.equals(name: MOBILE)],
          child: Icon(
            Icons.menu,
            color: Vx.blue800,
          ),
        ),
        title: ResponsiveVisibility(
            replacement: navContent(),
            visible: false,
            visibleWhen: [Condition.equals(name: MOBILE)],
            child: navContentMobile()),
        actions: [
          
          navBtn(),
        ],
      ),
    );
  }

  Widget navBtn() {
    return Row(
      children: [
        "Login".text.blue800.semiBold.make(),
        SizedBox(
          width: 10,
        ),
        btnDesign(
            text: "Sign Up".text.white.semiBold.make(),
            elevation: 15,
            color: Vx.blue800),
        SizedBox(
          width: 8.0,
        ),
      ],
    );
  }

  Widget navBtnMobile() {
    return Row(
      children: [
        btnDesign(
            text: "Sign Up".text.white.semiBold.make(),
            elevation: 15,
            color: Vx.blue800),
      ],
    );
  }

  Row navContent() {
    return Row(
      children: [
        "FlutterDeveloper".text.size(20).blue800.tight.bold.italic.make(),
        SizedBox(
          width: 250,
        ),
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.largerThan(name: MOBILE)],
          child: Row(
            children: [
              "Home".text.semiBold.blue800.size(15).make(),
              SizedBox(
                width: 40,
              ),
              "Pricing".text.semiBold.blue800.size(15).make(),
              SizedBox(
                width: 40,
              ),
              "Product".text.semiBold.blue800.size(15).make(),
              SizedBox(
                width: 40,
              ),
              "Contact us".text.semiBold.blue800.size(15).make(),
            ],
          ),
        ),
      ],
    );
  }
}

Row navContentMobile() {
  return Row(
    children: [
      "FlutterDeveloper".text.size(20).blue800.tight.bold.italic.make(),
    
    ],
  );
}

Widget btnDesign({Widget text, Color color, double elevation}) => RaisedButton(
      onPressed: () {},
      color: color,
      child: text,
      elevation: elevation,
    );
