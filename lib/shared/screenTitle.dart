import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 500),
      builder: (BuildContext context, double val, child) {
        return Opacity(
          opacity: val,
          child: Padding(
            child: child,
            padding: EdgeInsets.only(top: val * 20),
          ),
        );
      },
      tween: Tween<double>(begin: 0, end: 1),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
