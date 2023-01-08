import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.8,
                  width: double.infinity,
                  color: Colors.yellow,
                  child: Image.asset(
                    'assects/images/1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.8,
                  width: double.infinity,
                  color: Colors.black38,
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  top: 50,
                  child: Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          radius: 50,
                          backgroundImage:
                              AssetImage('assects/images/profile.jpg'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Neha Kakkar',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Ui Designer',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.image,
                        color: Colors.white,
                      ),
                      Text(
                        '141',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Photos',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      Text(
                        '845',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.add_alert_sharp,
                        color: Colors.white,
                      ),
                      Text(
                        '754',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Likes',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.blue,
                    ),
                    Text(
                      'Follow',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("It is a long established fact that a reader will be distracted "
                  "by the readable content of a page when looking at its layout."
                  " The point of using Lorem Ipsum is that it has a more-or-less "
                  "normal distribution",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
