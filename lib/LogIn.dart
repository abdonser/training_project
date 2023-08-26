import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0XFFD6D4C9),
        title: Text(
          "SHELF",

          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        actions: [Icon(Icons.menu)],
      ),
      body: Container(
        decoration: BoxDecoration(

          color:const Color(0XFFD6D4C9),
        ),


        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("assets/images/typewriter.jpg"),
              ),
              Container(
                  width: 300,
                 padding: EdgeInsets.only(left: 30),
                  child: const Text(
                    "Alife time Of World-Class Adventures",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  )),
              SizedBox(height: 15,),
              const Row(children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                    Text("40%",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Text("Only from E10 per month")
                  ],),

                ),
                SizedBox(width: 80,),
                CircleAvatar(
                  radius: 50,
                  child: Text("Signin",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  backgroundColor: Colors.orange,
                )



              ],)
            ],
          ),
        ),
      ),
    );
  }
}
