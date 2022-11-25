import 'package:flutter/material.dart';
import 'package:travel_flutter/models/destination.dart';
import 'package:travel_flutter/screens/detail_page.dart';
import '../navpages/calendar_page.dart';
import '../navpages/message_page.dart';
import '../navpages/search_page.dart';
import '../profile_screen/profile_page.dart';
import '../widgets/home_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    HomePage(),
    CalendarPage(),
    SearchPage(),
    MessagePage(),
    Profile(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: HomeAppBar(),
        ),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Explore the',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Beautiful world! ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: 25),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Best Destination',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => print('View All'),
                              child: (
                                  Text(
                                    'View All',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.0,
                                    ),
                                  )
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 400,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: destinations.length,
                        itemBuilder: (BuildContext context, int index) {
                          Destination destination = destinations[index];
                          return Container(
                            margin: EdgeInsets.all(10),
                            width: 200,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                Positioned(
                                  bottom: 15,
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '${destination.country}',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                          Text(
                                            destination.description,
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0, 2),
                                        blurRadius: 6,
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          height: 300,
                                          width: 280,
                                          image: AssetImage(destination.imageUrl),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Column(
                                          children: <Widget>[
                                            Column(
                                              children: [
                                                InkWell(
                                                  onTap: () =>
                                                  Navigator.push(context, MaterialPageRoute(
                                                    builder: (context) => DetailPage()),
                                                ),
                                                  child: Container(
                                                    alignment: Alignment.topRight,
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 6,
                                                        ),
                                                      ],
                                                      borderRadius: BorderRadius.circular(30),
                                                    ),
                                                    child: Icon(
                                                      Icons.bookmark_border_outlined,
                                                      color: Colors.white,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          elevation: 2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Calendar'),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.message_rounded), label: 'Messages'),
            BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Profile'),
          ],
        ),
      );
    }
  }

