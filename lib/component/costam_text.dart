import 'package:flutter/material.dart';

class Castom_text extends StatelessWidget {
  final String? title;
  final Color color;
  final FontWeight fontWeight;
  final double fontsize;


  const Castom_text({super.key,  required this.title, required this.color,  this.fontWeight=FontWeight.bold, required this.fontsize,});

  @override
  Widget build(BuildContext context) {
    return  Text(title!,style: TextStyle(color: color,fontWeight: fontWeight,fontSize: fontsize),);


  }
}
