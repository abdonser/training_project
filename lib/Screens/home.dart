import 'package:flutter/material.dart';
import 'package:task_5/component/costam_text.dart';

import '../component/coulm_c.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.all(15),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Row(children: [
            CircleAvatar(
              child: Icon(Icons.person),
              radius: 40,
            ),
            SizedBox(width: 15,),
            Column(
              children: [
                Castom_text(title: "wellcome backe", color: Colors.black, fontsize: 12,fontWeight: FontWeight.normal,),
                Castom_text(title: "Mohamed Ali", color: Colors.black, fontsize: 15),
              ],
            )
          ],),
          SizedBox(height: 15,),
          Row(children: [
            Container(
              width: 200,
                child: const Text("shelf is about your read try and enjoy",maxLines: 2,)),
            SizedBox(width: 30,),

            Expanded(
              child: Container(

                

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange
                  ),
                  child: TextButton(onPressed: (){}, child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.settings),Castom_text(title: "smart picker", color: Colors.white, fontsize: 10)],))),
            )
          ],),
          SizedBox(height: 15,),
          Container(
            height: 70,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.white),

            child: const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Colum_c(
                    c1: "300",
                    c2: "hours",
                  ),
                  SizedBox(width: 60,),
                  Colum_c(
                    c1: "200",
                    c2: "books",
                  ),
                  SizedBox(width: 60,),
                  Colum_c(
                    c1: "100",
                    c2: "authers",
                  ),
                ],),
              ),
            ),
          ),
          SizedBox(height: 40,),
          const Castom_text(title: "cintinue reading", color: Colors.black, fontsize: 20),

            SizedBox(height: 40,),
            Expanded(
              child: ListTile(
                leading: Image.network("https://t3.ftcdn.net/jpg/03/16/86/98/360_F_316869849_oHD2qOXRJlZE2Md6SNv0MtvDcgZyHkfv.jpg",height: 100,),
                title:const Castom_text(title: "The Gold finch",color: Colors.black,fontsize: 20,),
                subtitle: const Castom_text(title: "Donaa Tart!",color: Colors.black,fontsize: 10,fontWeight: FontWeight.normal,),
                trailing: const Column(
                  children: [
                    Text("65%"),
                    SizedBox(height: 15,),
                    Icon(Icons.group_work_outlined),

                  ],
                ),

              ),
            ),
            Divider(),
            Expanded(
              child: Container(

                child:  ListTile(
                  leading: Image.network("https://t3.ftcdn.net/jpg/03/16/86/98/360_F_316869849_oHD2qOXRJlZE2Md6SNv0MtvDcgZyHkfv.jpg"),
                  title:const Castom_text(title: "The Gold finch",color: Colors.black,fontsize: 20,),
                  subtitle: const Castom_text(title: "Donaa Tart!",color: Colors.black,fontsize: 10,fontWeight: FontWeight.normal,),
                  trailing: const Column(
                    children: [
                      Text("65%"),
                      SizedBox(height: 15,),
                      Icon(Icons.group_work_outlined),

                    ],
                  ),

                ),
              ),
            )
          
        ],),
      ),
    );
  }
}
