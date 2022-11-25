import 'package:flutter/material.dart';
import 'package:travel_flutter/screens/login_screen.dart';

class SplashHome extends StatefulWidget {
  const SplashHome({Key? key}) : super(key: key);

  @override
  State<SplashHome> createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {
  @override
  void initState() {
    var splashhome = Duration(seconds: 3);
    // delayed 3 seconds to next page
    Future.delayed(splashhome, () {
      // to next page and close this page
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          },
        ),
            (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg-welcome.jpg"),
        fit: BoxFit.cover,
        opacity: 0.7,
      )),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Travel App",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
