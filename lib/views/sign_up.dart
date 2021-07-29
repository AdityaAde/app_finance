import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;
    final widthApp = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Create Account',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: heightApp,
            width: widthApp,
            child: LayoutBuilder(builder: (context, constraints) {
              return SizedBox(
                child: Column(
                  children: [
                    Container(
                      width: widthApp,
                      height: constraints.maxHeight * 0.3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/office.png'))),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Container(
                        height: constraints.maxHeight,
                        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Column(
                          children: [
                            TextField(
                                decoration: InputDecoration(
                              labelText: 'First Name',
                            )),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Last Name',
                              ),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: 'Email Password'),
                            ),
                            TextField(
                              obscureText: true,
                              decoration:
                                  InputDecoration(labelText: 'Password'),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            InkWell(
                              child: Container(
                                width: constraints.maxWidth * 0.5,
                                height: 40,
                                child: Center(
                                    child: Text("Let's Get Started",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                        ))),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?"),
                                SizedBox(width: 5),
                                InkWell(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
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
      ),
    );
  }
}
