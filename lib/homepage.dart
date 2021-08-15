import 'package:flutter/material.dart';
import 'package:profile_app/animation/homepage_animation.dart';
import 'package:profile_app/data/user_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final imgPath = usersDetails.map((e) => e.imagePath).toList();
    final fName = usersDetails.map((e) => e.firstName).toList();
    final lName = usersDetails.map((e) => e.lastName).toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: usersDetails.length,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, int index) {
                return Stack(
                  children: [
                    Hero(
                      tag: 'img' + fName[index],
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.39,
                        width: double.infinity,
                        child: Image.asset(
                          imgPath[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.28,
                      left: 10,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              fullscreenDialog: true,
                              transitionDuration: Duration(milliseconds: 1000),
                              reverseTransitionDuration:
                                  Duration(milliseconds: 1000),
                              pageBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation) {
                                return AnimatedHomePage(
                                  getImagePath: imgPath[index],
                                  getFirstName: fName[index],
                                  getLastName: lName[index],
                                  isTaped: true,
                                );
                              },
                              transitionsBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation,
                                  child) {
                                return Align(
                                  child: FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  ),
                                );
                              },
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Hero(
                              tag: 'icon' + fName[index],
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/user.png'),
                                backgroundColor: Colors.grey,
                                radius: 30,
                              ),
                            ),
                            SizedBox(width: 20),
                            Hero(
                              tag: 'txtF' + fName[index],
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  fName[index],
                                  softWrap: false,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Hero(
                              tag: 'txtL' + fName[index],
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  lName[index],
                                  softWrap: false,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height,
                      left: 0,
                      right: 0,
                      child: Hero(
                        tag: 'container' + fName[index],
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Hero(tag: 'userName' + fName[index], child: SizedBox()),
                    Row(
                      children: [
                        Hero(tag: 'loc' + fName[index], child: SizedBox()),
                        Hero(tag: 'location' + fName[index], child: SizedBox()),
                      ],
                    ),
                    Row(
                      children: [
                        Hero(tag: 'camera' + fName[index], child: SizedBox()),
                        Hero(tag: 'website' + fName[index], child: SizedBox()),
                      ],
                    ),
                  ],
                );
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: AppBar(
                title: Text(
                  'Plant',
                  style: TextStyle(color: Colors.black),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // return Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
