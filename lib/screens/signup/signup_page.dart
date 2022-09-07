import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController cpassController = TextEditingController();

  // variables
  String name = '';
  String email = '';
  String pass = '';
  String cpass = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 90, 218, 235),
              Color.fromARGB(255, 96, 195, 208),
              Color.fromARGB(255, 69, 141, 150)
            ])),
            child: Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Create an Account",
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 10),
                                    child: TextFormField(
                                      controller: nameController,
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        labelText: "Full Name",
                                        errorStyle: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 15),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter your fullname";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 10),
                                    child: TextFormField(
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        labelText: "Email",
                                        errorStyle: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 15),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter your email";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 10),
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: "Password",
                                        errorStyle: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 15),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please set your password";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 10),
                                    child: TextFormField(
                                      controller: cpassController,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      decoration: InputDecoration(
                                        labelText: "Confirm password",
                                        errorStyle: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 15),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "enter confirm password";
                                        }
                                        if (passController.text.trim() !=
                                            value) {
                                          return "Confirm password dose not match";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CupertinoButton(
                                      color: Color.fromARGB(255, 96, 195, 208),
                                      child: Text("Create"),
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          setState(() {
                                            name = nameController.text.trim();
                                            email = emailController.text.trim();
                                            pass = passController.text.trim();
                                          });
                                        }
                                      })
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Text("Hallo")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
