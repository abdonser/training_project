import 'package:flutter/material.dart';

import 'notification.dart';



class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: const Text("Setting"),
      backgroundColor: Colors.lightGreenAccent,)
      ,
      body:  Center(child: InkWell(

          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const notification()));
          },
          child: const Text("setting page"))),

    );
  }
}
