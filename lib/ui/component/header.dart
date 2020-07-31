import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:port/const/const_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ConstColor.kbgColor,
          image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(ConstColor.kbgColor, BlendMode.color),
              image: AssetImage("asset/images/5.png"),
              fit: BoxFit.cover)),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:<Widget>[
          hLeftSide().pOnly(top:80),
           Container(
             height:500,
             width:500,
             child:FlareActor("asset/nima/Filip.flr", alignment:Alignment.center, fit:BoxFit.contain, animation:"idle")).pOnly(bottom:20)
        ]
      ),
    );
  }

  Column hLeftSide() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            alignment: Alignment.topLeft,
            child: "You drive.".text.blue900.extraBold.size(40).make()),
        Container(
            alignment: Alignment.topLeft,
            child: "We'll handle the rest"
                .text
                .blue900
                .extraBold
                .size(40)
                .make()).pOnly(bottom:40),
        Container(
                alignment: Alignment.topLeft,
                child: "All-inclusive, usage-based car subscriptions."
                    .text
                    .gray900
                    .thin
                    .semiBold
                    .heightRelaxed
                    .make())
            .pOnly(top: 30, bottom: 25),
        Container(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Container(
                width: 250,
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "@ Enter your email...",
                      contentPadding: EdgeInsets.only(left: 10, right: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0)))),
                ),
              ),
              btnTextField(text: "Subcribe")
            ],
          ),
        ),
        Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                "Want to talk to our customer care?."
                    .text
                    .gray900
                    .thin
                    .semiBold
                    .heightRelaxed
                    .make(),
                InkWell(
                    onHover: (_) {},
                    child: " Request a chat".text.black.bold.underline.make())
              ],
            )).pOnly(top: 20),
      ],
    );
  }
}

Widget btnTextField({String text}) => Container(
      height: 45,
      width: 80,
      alignment: Alignment.center,
      child: Text(text).text.white.semiBold.make(),
      decoration: BoxDecoration(
          color: Vx.blue900,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5), bottomRight: Radius.circular(5))),
    );
