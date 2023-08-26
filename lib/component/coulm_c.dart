import 'package:flutter/material.dart';

class Colum_c extends StatelessWidget {
   final String? c1;
   final String? c2;
  const Colum_c({super.key, this.c1, this.c2});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Text(c1!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Text(c2!),



      ],


    );
  }
}
