import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2)
              )
            ]
          ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.email,
              color: Color(0xff5ac18e),
            ),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: Colors.black38
            )
          ),
        ),
      )
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2)
              )
            ]
        ),
        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xff5ac18e),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                  color: Colors.black38
              )
          ),
        ),
      )
    ],
  );
}

Widget buildForgotPass() {
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () => print('Forgot Password pressed'),
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void showFailMessage() {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("Login"),
          content: const Text("Login Falied!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, "OK");
              },
              child: const Text("OK"),
            )
          ],
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign in now',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                        
                      ),
                      SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      SizedBox(height: 20),
                      buildForgotPass(),
                      SizedBox(height: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(320, 50),
                            primary: Colors.white,
                            elevation: 5,
                            padding: EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Color(0xff5ac18e),
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: () =>
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => HomePage()))
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
