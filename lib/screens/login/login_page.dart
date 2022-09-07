import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_test/screens/login/bottom.dart';
import 'package:online_test/screens/login/input_fields.dart';

import 'header.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: Container(
        //     alignment: Alignment.bottomCenter,
        //     child: Text("copyrights ©Tragle software private limited")),
        body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color.fromARGB(255, 90, 218, 235),
            Color.fromARGB(255, 96, 195, 208),
            Color.fromARGB(255, 69, 141, 150)
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Header(),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height < 50)
                  ? MediaQuery.of(context).size.height * 0.6
                  : 500,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),

              // login form
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  right: 60,
                  left: 60,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Form(
                      child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            labelText: "Email",
                            errorStyle: TextStyle(
                              color: Colors.red,
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter password";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passController,
                        decoration: InputDecoration(
                            labelText: "Password",
                            errorStyle: TextStyle(
                              color: Colors.red,
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter password";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {}, child: Text("Forget Password")),
                      CupertinoButton(
                          color: Color.fromARGB(255, 96, 195, 208),
                          child: Text("Login"),
                          onPressed: () {}),
                    ],
                  )),
                ),
              ),

              // form end
            ),
            Container(
                color: Colors.white,
                alignment: Alignment.bottomCenter,
                child: Text("copyrights ©Tragle software private limited")),
          ],
        ),
      ),
    ));
  }
}
