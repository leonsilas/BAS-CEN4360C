import 'package:flutter/material.dart';
import 'package:flutter_crash_course/constants.dart';
import 'package:flutter_crash_course/theme.dart';
import 'defaultPage.dart';

class StartupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkThemeData(context),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
            child: Column(
              children: [
                Spacer(flex: 2),
                Image.asset("./assets/vc_fullsmall.png"),
                Spacer(flex: 2),
                Container(
                  height: 50.0,
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DefaultPage(),
                        )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [aPrimaryColor, aSecondaryColor],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints: BoxConstraints(minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign In",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DefaultPage(),
                        )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [aPrimaryColor, aSecondaryColor],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints: BoxConstraints(minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign Up",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
