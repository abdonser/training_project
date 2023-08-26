import 'package:flutter/material.dart';

import 'hoomscreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController email_controller = TextEditingController();
  TextEditingController Password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "wellcome backe",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: email_controller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      suffixIcon: Icon(Icons.account_circle),
                      labelText: 'enter your email adderess',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                      controller: Password_controller,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye),
                          labelText: "password")),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 70,
                    width: 250,

                    decoration:  BoxDecoration(color: Colors.green,
                    borderRadius: BorderRadius.circular(300)),
                    child: MaterialButton(
                      onPressed: () {
                        if (email_controller.text == "ali@test.com" &&
                            Password_controller.text == "567134567") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => HoomScreen()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text("ERROR"),
                            duration: Duration(microseconds: 10),
                          ));
                        }
                      },

                      child: const Text("login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("dont have un accunt",
                          style: TextStyle(fontSize: 15)),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign in ",
                            style: TextStyle(
                                fontSize: 19, color: Colors.blueAccent),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
