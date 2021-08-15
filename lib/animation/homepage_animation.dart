import 'package:flutter/material.dart';
import 'package:profile_app/data/user_data.dart';

class AnimatedHomePage extends StatefulWidget {
  final String getImagePath;
  final String getFirstName;
  final String getLastName;
  final bool isTaped;

  AnimatedHomePage({
    required this.getImagePath,
    required this.getFirstName,
    required this.getLastName,
    required this.isTaped,
  });

  @override
  _AnimatedHomePageState createState() => _AnimatedHomePageState();
}

class _AnimatedHomePageState extends State<AnimatedHomePage> {
  final imgPath = usersDetails.map((e) => e.imagePath).toList();
  final userName = usersDetails.map((e) => e.userName).toList();
  late int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.getImagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Hero(
              tag: 'img' + widget.getFirstName,
              child: Container(
                child: Image.asset(
                  widget.getImagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.11,
              left: 20,
              child: Hero(
                tag: 'icon' + widget.getFirstName,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/user.png'),
                  backgroundColor: Colors.grey,
                  radius: 40,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.22,
              left: 20,
              child: Hero(
                tag: 'txtF' + widget.getFirstName,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    widget.getFirstName,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.28,
              left: 20,
              child: Hero(
                tag: 'txtL' + widget.getFirstName,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    widget.getLastName,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: 25,
              child: Hero(
                tag: 'userName' + widget.getFirstName,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    userName[0],
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              left: 25,
              child: Row(
                children: [
                  Hero(
                    tag: 'loc' + widget.getFirstName,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  SizedBox(width: 5),
                  Hero(
                    tag: 'location' + widget.getFirstName,
                    child: Text(
                      'Varanasi, UP',
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: 25,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Hero(
                    tag: 'camera' + widget.getFirstName,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  SizedBox(width: 5),
                  Hero(
                    tag: 'website' + widget.getFirstName,
                    child: Text(
                      'instagram.com/ashwanisng',
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    return Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.560,
              left: 0,
              right: 0,
              bottom: 0,
              child: Hero(
                tag: 'container' + widget.getFirstName,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 8, right: 8),
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Text(
                                  'Photos',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Likes',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Collections',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: PageView.builder(
                            itemCount: usersDetails.length,
                            scrollDirection: Axis.horizontal,
                            controller: PageController(viewportFraction: 0.7),
                            onPageChanged: (int index) {
                              setState(() {
                                _index = index;
                              });
                            },
                            itemBuilder: (_, i) {
                              return Transform.scale(
                                scale: i == _index ? 1 : 0.9,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Card(
                                      elevation: 6,
                                      child: Image.asset(
                                        imgPath[i],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
