import 'package:finance_app/views/login.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;
    final widthApp = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: SafeArea(
          child: SizedBox(
            height: heightApp,
            width: widthApp,
            child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                children: [
                  Container(
                    width: widthApp,
                    height: constraints.maxHeight * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/dashboard.png'))),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 50),
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Column(
                        children: [
                          Text(
                            "Welcome to \nFinance App",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Manage your finance for the better future",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.2,
                          ),
                          InkWell(
                            child: Container(
                              width: constraints.maxWidth * 0.4,
                              height: 40,
                              child: Center(
                                  child: Text(
                                "Let's Get Started",
                                style: TextStyle(color: Colors.white),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return LoginScreen();
                              }));
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }),
          ),
        ));
  }
}
