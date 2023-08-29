import 'package:flutter/material.dart';
import 'package:task_5/Alertdailog.dart';

class Costom_AlertDialog extends StatelessWidget {
  String title;
  String subtitle;


   Costom_AlertDialog({super.key,required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title: Text(title),
      content: Text(subtitle),
      actions: [
        TextButton(onPressed: (){}, child: Text("cancel")),
        TextButton(onPressed: (){}, child: Text("ok")),
      ],






    );

  }
}
