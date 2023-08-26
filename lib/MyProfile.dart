import 'package:flutter/material.dart';

import 'component/coulm_c.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFD6D4C9),
        leading: Icon(Icons.menu),
        title: const Text(
          "My profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notification_add),
          )
        ],
      ),
      body:  Container(
        color:Color(0XFFD6D4C9) ,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("wellcome back"),
                      Text(
                        "John Sortino",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(children: [
                Container(
                  width: 200,



                    child: Text("shelf it is all about you read try to enjoy",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,)),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    width: 80,
                    height: 35,

                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                      Icon(Icons.settings),
                      Text("Smart picker")
                    ],),
                  ),
                )



              ],),
              SizedBox(height: 40,),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),

                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                    Colum_c(
                      c1: "928",
                      c2: "hours",
                    ),
                    SizedBox(width: 60,),
                    Colum_c(c1: "129",c2: "books",),
                    SizedBox(width: 60,),
                    Colum_c(c1: "100",c2: "authers",)
                  ],),
                ),
              ),
              SizedBox(height: 40,),
              Text("Continue reading",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 40,),
             Padding(
               padding: const EdgeInsets.only(top: 40),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                 ListTile(
                   leading: Image.asset("assets/images/images.jpg",height: 200,),
                   title: Text("The GoldFinch"),
                   subtitle: Text("Donee Tart"),
                   trailing: Column(children: [
                     Text("62%",style: TextStyle(fontSize: 20),),
                     Icon(Icons.circle)
                   ],),
                 ),
                 SizedBox(height: 20,),
                 Divider(),

                 ListTile(
                   leading: Image.asset("assets/images/images.jpg",width: 50,height: 200,),
                   title: Text("The GoldFinch"),
                   subtitle: Text("Donee Tart"),
                   trailing: Column(children: [
                     Text("62%",style: TextStyle(fontSize: 20),),
                     Icon(Icons.circle)
                   ],),
                 )


               ],),
             )


            ],
          ),
        ),
      ),
    );
  }
}
