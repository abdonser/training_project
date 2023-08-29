import 'package:flutter/material.dart';

import 'component/AlertDailog.dart';
import 'component/costam_text.dart';

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: const Castom_text(
            title: "My profile", color: Colors.black, fontsize: 20),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.notification_add),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(0.8),
              color: Colors.red,
              child: MaterialButton(
                onPressed: () {
                  showDialog(context: context, builder: ( BuildContext context ){
                    return  Costom_AlertDialog(title: 'new waerning',subtitle: "checkout payed sucessfulluy",);
                  });
                },
                child: Text("Exit"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(0.8),
              color: Colors.orange,
              child: MaterialButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("checkout payed sucessfulluy"),
                    duration: Duration(seconds: 100),
                  ));
                },
                child: Text("checkout"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(0.8),
              color: Colors.greenAccent,
              child: MaterialButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const Wrap(
                          children: [
                            ListTile(
                              leading: Icon(Icons.share),
                              title: Text('Share'),
                            ),
                            ListTile(
                              leading: Icon(Icons.copy),
                              title: Text('Copy Link'),
                            ),
                            ListTile(
                              leading: Icon(Icons.edit),
                              title: Text('options'),
                            ),
                          ],
                        );
                      });
                },
                child: Text("options"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed: () {},
  );
  Widget okFun = TextButton(
    child: Text("OK"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(""),
    content: Text("Would you like to close this page"),
    actions: [
      cancelButton,
      okFun,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDailog_A(BuildContext context) {
  AlertDialog art = AlertDialog(
    title: Text("HALLO"),
    content: Text("fgddgdgd"),
    actions: [
      TextButton(onPressed: () {}, child: Text("remove")),
      TextButton(onPressed: () {}, child: Text("add")),
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return art;
      });
}
//
