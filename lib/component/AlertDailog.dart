import 'package:flutter/material.dart';
import 'package:task_5/listview.dart';

class Costom_AlertDialog extends StatelessWidget {
  String title;
  String subtitle;


   Costom_AlertDialog({super.key,required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title: Text("Warnnig"),
      content: Text("please enter number"),
      actions: [
        TextButton(onPressed: (){}, child: Text(title)),
        TextButton(onPressed: (){}, child: Text(subtitle)),
      ],






    );

  }
}
