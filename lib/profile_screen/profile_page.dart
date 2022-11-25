import 'package:flutter/material.dart';
import 'package:travel_flutter/screens/home_screen.dart';
import 'card_features.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () =>
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => HomePage())
                          ),
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                    )
                  ],
                )
            ),
            Positioned(
                left: 150,
                top: 65,
                child: Row(
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    )
                  ],
                )
            ),
            Positioned(
                left: 300,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {}, icon: Icon(Icons.edit),
                      color: Colors.black,
                    )
                  ],
                )
            ),
            SafeArea(
              minimum: EdgeInsets.only(top: 130),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/avt.jpg"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Ngọc Mạnh",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "example_demo@gmail.com",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SafeArea(
              minimum: EdgeInsets.only(top: 280, bottom: 440, left: 25, right: 25),
              child: MaterialButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Text(
                          'Reward Points',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '360',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),

                    Column(
                      children: [
                        Text(
                          'Travel Trips',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '238',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          'Bucket List',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '473',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // ListView(
            //   children: [
            //     InfoProfile()
            //   ],
            // )
            SafeArea(
              minimum: EdgeInsets.only(top: 350),
                child: Column (
                  children: <Widget>[
                    Features(text: 'Profile', icon: Icons.perm_identity_sharp),
                    Features(text: 'Bookmarked', icon: Icons.bookmark_outline_rounded),
                    Features(text: 'Previous Trips', icon: Icons.airplanemode_active_sharp),
                    Features(text: 'Setting', icon: Icons.settings),
                    Features(text: 'Version', icon: Icons.verified_sharp),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}