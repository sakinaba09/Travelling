import 'package:traveling/ui/shared/colors.dart';
import 'package:flutter/material.dart';

class CustomIntroButton extends StatelessWidget {
  final String textchild;
  const CustomIntroButton({super.key, required this.textchild});

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Container(
           height:size.width/10 ,
           width:size.width/2.3 ,
      decoration: BoxDecoration(
          color: Color(0xFF7898D6),
          borderRadius:BorderRadius.circular(10)),
      child: Center(
          child: Text(
        textchild,
        style: TextStyle(color: Colors.white, fontSize: size.width/20),
      )),
    );
  }
}