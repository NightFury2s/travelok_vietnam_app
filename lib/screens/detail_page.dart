import 'package:flutter/material.dart';
import 'home_screen.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bg-welcome.jpg"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
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
                      color: Colors.white,
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
                      'Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
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
                      onPressed: (){}, icon: Icon(Icons.bookmark_border_outlined),
                      color: Colors.white,
                    )
                  ],
                )
            ),
            Positioned(
              top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  child: Column(
                    children: [
                      Positioned(
                          left: 150,
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: (){}, icon: Icon(Icons.maximize),
                                color: Colors.grey,
                              )
                            ],
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'France',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/avt.jpg"),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            'France, Paris',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined, color: Colors.grey),
                              SizedBox(width: 1),
                              Text(
                                'France',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 50),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow,size: 14,),
                              SizedBox(width: 1),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                              Text(
                                '(2498)',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 45),
                          Row(
                            children: [
                              Text(
                                '\$59/',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue
                                ),
                              ),
                              Text(
                                'Person',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Wrap(
                        children: List.generate(5, (index) {
                          return Container(
                            margin: EdgeInsets.all(7),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey
                            ),
                          );
                        }),
                        ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'About Destination',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting "
                            "industry. Lorem Ipsum has been the industry's standard dummy text "
                            "ever since the 1500s, when an unknown printer.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20),
                      Positioned(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                                onPressed: (){},
                                style: TextButton.styleFrom(
                                  fixedSize: const Size(320, 50),
                                  foregroundColor: Colors.blue,
                                  elevation: 2,
                                  backgroundColor: Colors.blue,
                                  shape: StadiumBorder()
                                ),
                              )
                            ],
                          )
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
