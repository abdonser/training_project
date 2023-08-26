import 'package:flutter/material.dart';

import '../component/costam_text.dart';
import 'notification.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("profile"),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: const Castom_text(
          title: "hallo",
          color: Colors.red,
          fontsize: 20,
        ));
  }
}
