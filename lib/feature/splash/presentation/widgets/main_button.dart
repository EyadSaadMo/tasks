import 'package:flutter/material.dart';
import 'package:test1/core/colors/colors.dart';

class MainButton extends StatelessWidget {
  final Widget widget;
  final Function onPressed;
  const MainButton({
    Key? key,
    required this.widget,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: ColorManager.kSplashColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(child: widget),
      ),
    );
  }
}
