import 'package:finance_app/views/main_screen.dart';
import 'package:finance_app/views/sign_up.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;
    final widthApp = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: SizedBox(
          height: heightApp,
          width: widthApp,
          child: LayoutBuilder(builder: (context, constraints) {
            return SizedBox(
              child: Column(
                children: [
                  Container(
                    width: widthApp,
                    height: constraints.maxHeight * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/login.png'))),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Container(
                      height: constraints.maxHeight,
                      padding: EdgeInsets.only(top: 50, left: 15, right: 15),
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Column(
                        children: [
                          TextField(
                              decoration:
                                  InputDecoration(hintText: 'Email Address')),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(hintText: 'Password'),
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.2,
                          ),
                          InkWell(
                            child: Container(
                              width: constraints.maxWidth * 0.4,
                              height: 40,
                              child: Center(
                                  child: Text("Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold))),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainScreen();
                              }));
                            },
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't Have an account?"),
                              SizedBox(width: 5),
                              InkWell(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SignUp();
                                  }));
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
