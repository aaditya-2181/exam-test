import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_test/screens/signup/signup_next.dart';

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

  // List<String> courseList = ;
  String selectCourse = "1";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 90, 218, 235),
              Color.fromARGB(255, 96, 195, 208),
              Color.fromARGB(255, 69, 141, 150)
            ])),
            child: Column(
              children: [
                Padding(
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
                          "REGISTRATION",
                          style: GoogleFonts.getFont('Josefin Sans',
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      right: 40, left: 40, top: 5, bottom: 5),
                                  child: TextFormField(
                                    controller: nameController,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      labelText: "Student Name",
                                      errorStyle: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 15),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please Enter Your Full Name";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                // course list
                                // DropdownButton(
                                //     isDense: true,
                                //     value: selectCourse,
                                //     onChanged: (String? newValue) {
                                //       setState(() {
                                //         selectCourse = newValue!;
                                //       });
                                //     },
                                //     items: ['1', '2', '3', '4', '5']
                                //         .map<DropdownMenuItem<String>>(
                                //             (String value) {
                                //       return DropdownMenuItem<String>(
                                //         value: value,
                                //         child: Text(value),
                                //       );
                                //     }).toList()),

                                //end
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 5),
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
                                        return "Please Enter Your Email";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 5),
                                  child: TextFormField(
                                    controller: passController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      errorStyle: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 15),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please Set Your Password";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 5),
                                  child: TextFormField(
                                    controller: cpassController,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      labelText: "Confirm Password",
                                      errorStyle: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 15),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter Confirm Password";
                                      }
                                      if (passController.text.trim() != value) {
                                        return "Confirm Password Dose Not Match";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 20, bottom: 20),
                                  child: CupertinoButton(
                                      color: Color.fromARGB(255, 96, 195, 208),
                                      child: Text("Next"),
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          setState(() {
                                            name = nameController.text.trim();
                                            email = emailController.text.trim();
                                            pass = passController.text.trim();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUpNextPage(
                                                          name: name,
                                                          email: email,
                                                          pass: pass,
                                                        )));
                                          });
                                        }
                                      }),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                // Footer part

                // center or text part
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.white10,
                                Colors.white,
                              ],
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(1.0, 1.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp)),
                      width: 100,
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 5),
                      child: Text(
                        "OR",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Poppins"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.white10,
                                Colors.white,
                              ],
                              begin: FractionalOffset(1.0, 1.0),
                              end: FractionalOffset(0.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp)),
                      width: 100,
                      height: 1,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: TextButton(
                    child: Text(
                      "Sign up with",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: "SignikaRegular"),
                    ),
                    onPressed: () {},
                  ),
                ),
                // end or text

                // icons part
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 40, bottom: 60),
                      child: GestureDetector(
                        onTap: () => {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Color.fromARGB(255, 96, 195, 208),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 40, bottom: 60),
                      child: GestureDetector(
                        onTap: () => {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            color: Color.fromARGB(255, 96, 195, 208),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 60, right: 40),
                      child: GestureDetector(
                        onTap: () => {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            FontAwesomeIcons.google,
                            color: Color.fromARGB(255, 96, 195, 208),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 60),
                      child: GestureDetector(
                        onTap: () => {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            FontAwesomeIcons.git,
                            color: Color.fromARGB(255, 96, 195, 208),
                          ),
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
