import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SHELF",
          style: TextStyle(color: Colors.black87),
        ),
        actions: const [Icon(Icons.menu, color: Colors.black)],
        backgroundColor: Colors.white54,
      ),
      body: Container(

        color: Colors.white54,
        child: Padding(
          padding:  EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[350],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [
                        Image.asset("assets/images/typewriter.jpg",),
                        const Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                        "Alife time Of World-Class Adventures",
                        maxLines: 3,
                        style: TextStyle(fontSize: 45),
                        overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "-40%",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text("only from E 10 per month"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){

                        },
                        child: CircleAvatar(
                          child: Text(
                            "Sign in",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          backgroundColor: Colors.orange[700],
                          radius: 50,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
