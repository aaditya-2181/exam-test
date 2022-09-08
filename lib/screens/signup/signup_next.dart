import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpNextPage extends StatefulWidget {
  final String name;
  final String email;
  final String pass;

  const SignUpNextPage(
      {super.key, required this.name, required this.email, required this.pass});

  @override
  State<SignUpNextPage> createState() => _SignUpNextPageState();
}

class _SignUpNextPageState extends State<SignUpNextPage> {
  List<String> courseList = [
    "Select Course",
    "5th",
    "6th",
    "7th",
    "8th",
    "9th",
    "10th",
    "11th",
    "12th",
    "CG/PM-VYAPUM",
    "CG/PM-PSC",
    "SSC",
    "PATWARI",
    "UPSC",
    "Other Competative Exam",
    "BCA",
    "BBA",
    "BA",
    "BCOM",
    "BSW",
    "BJ",
    "B. LIB",
    "B.Sc",
    "BE/B.Tech",
    "MCA",
    "MBA",
    "MA",
    "MCOM",
    "MSW",
    "MJ",
    "M.Sc",
    "M. LIB",
    "ME/M.Tech",
    "DCA",
    "PGDCA",
    "BSC CS",
    "INTERNSHIP",
    "DMLT/BMLT",
    "DIPLOMA",
    "ITI"
  ];
  String? selectCourse = "Select Course";
  int _gender = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 90, 218, 235),
            Color.fromARGB(255, 96, 195, 208),
            Color.fromARGB(255, 69, 141, 150)
          ])),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: DropdownButton(
                      hint: Text("Select Course"),
                      value: selectCourse,
                      items: courseList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        selectCourse = value!;
                        setState(() {
                          print(selectCourse);
                        });
                      },
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Select Gender"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _gender,
                                  onChanged: (value) {
                                    setState(() {
                                      _gender = value!;
                                    });
                                  }),
                              Text("Male")
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 2,
                                  groupValue: _gender,
                                  onChanged: (value) {
                                    setState(() {
                                      _gender = value!;
                                    });
                                  }),
                              Text("Female")
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 3,
                                  groupValue: _gender,
                                  onChanged: (value) {
                                    setState(() {
                                      _gender = value!;
                                    });
                                  }),
                              Text("Other")
                            ],
                          ),
                        ],
                      )
                    ],
                  )

                  // phone number
                  ,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Phone Number",
                          prefix: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text("+91"),
                          )),
                    ),
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
