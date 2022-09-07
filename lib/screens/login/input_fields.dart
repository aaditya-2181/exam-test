import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'bottom.dart';

class InputFields extends StatelessWidget {
  const InputFields({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();

    String email = '';
    String pass = '';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
      child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
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
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(color: Colors.red),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {}, child: Text("Forget Password")),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: CupertinoButton(
                              color: Color.fromARGB(255, 96, 195, 208),
                              child: Text("Login"),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
