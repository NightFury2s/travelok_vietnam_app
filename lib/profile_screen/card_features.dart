import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  final String text;
  final IconData icon;

  Features({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.grey,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
