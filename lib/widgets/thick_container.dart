import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2.0, color: Colors.white)),
    );
  }
}
