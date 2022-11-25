import 'package:flutter/material.dart';
import 'package:travel_flutter/widgets/navbottom.dart';
import '../profile_screen/profile_page.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: ()  =>
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Profile()),
                  ),
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)
                  ),
                  child: Padding (
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/avt.jpg"),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Ngọc Mạnh",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.notifications_outlined,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

