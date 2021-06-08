import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:trackvest/theme/palette.dart';

//widgets
import 'package:trackvest/widgets/navbar.dart';
import 'package:trackvest/widgets/input.dart';

import 'package:trackvest/widgets/drawer.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _checkboxValue = false;

  final double height = window.physicalSize.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 24.0, right: 24.0, bottom: 32),
              child: Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.63,
                          color: Color.fromRGBO(244, 245, 247, 1),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 24.0, bottom: 24.0),
                                    child: Center(
                                      child: Text("Sign Up",
                                          style: TextStyle(
                                              color: ArgonColors.text,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 20)),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Input(
                                          placeholder: "Name",
                                          prefixIcon: Icon(Icons.school),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Input(
                                            placeholder: "Email",
                                            prefixIcon: Icon(Icons.email)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Input(
                                            placeholder: "Password",
                                            prefixIcon: Icon(Icons.lock)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 24.0),
                                        child: RichText(
                                            text: TextSpan(
                                                text: "password strength: ",
                                                style: TextStyle(
                                                    color: ArgonColors.muted),
                                                children: [
                                              TextSpan(
                                                  text: "strong",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          ArgonColors.success))
                                            ])),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 0, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                            activeColor: ArgonColors.primary,
                                            onChanged: (bool newValue) =>
                                                setState(() =>
                                                    _checkboxValue = newValue),
                                            value: _checkboxValue),
                                        Text("I agree with the",
                                            style: TextStyle(
                                                color: ArgonColors.muted,
                                                fontWeight: FontWeight.w200)),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/pro');
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text("Privacy Policy",
                                                  style: TextStyle(
                                                      color:
                                                          ArgonColors.primary)),
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Center(
                                      child: FlatButton(
                                        textColor: ArgonColors.white,
                                        color: ArgonColors.primary,
                                        onPressed: () {
                                          // Respond to button press
                                          Navigator.pushNamed(context, '/home');
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.0,
                                                right: 16.0,
                                                top: 12,
                                                bottom: 12),
                                            child: Text("REGISTER",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.0))),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  )),
            ),
          ]),
        )
      ],
    ));
  }
}
