import 'package:flutter/cupertino.dart';
import 'package:mm_app/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double width;
  ResponsiveButton({this.width, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("img/button-one.png")],
      ),
    );
  }
}
