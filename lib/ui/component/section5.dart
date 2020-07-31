import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Made with".text.blue900.size(20).italic.make(),
          " Love ".text.red500.size(20).italic.make(),
          "by flutter developers".text.blue900.italic.size(20).make()
        ],
      ),
    );
  }
}
