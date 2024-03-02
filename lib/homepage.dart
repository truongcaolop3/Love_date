import 'package:flutter/material.dart';
import 'package:love_date/pages/liked.dart';
import 'package:love_date/pages/status.dart';
import 'package:love_date/pages/suggest.dart';
import 'package:love_date/pages/swipe_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dating',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings, size: 24),
            onPressed: () {
              print('Settings icon pressed');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 46,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5, bottom: 5),
                  child: InkWell(
                    onTap: () {
                      print('LikedPage');

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Liked()),
                      );
                    },
                    child: Ink(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        'Đã thích bạn',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: InkWell(
                    onTap: () {
                      print('SuggestPage');

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SuggestPage()),
                      );
                    },
                    child: Ink(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        'Gợi ý ghép đôi',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 16, top: 5, bottom: 5),
                  child: InkWell(
                    onTap: () {
                      print('StatusPage');

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StatusPage()),
                      );
                    },
                    child: Ink(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        'Trang cá nhân',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0.0, 1.0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/1.jpg',
                          width: double.infinity,
                          height: 410,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.white, // Choose your background color
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 15, bottom: 8, left: 15, right: 50),
                              child: Text(
                                'Trường, 21',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: 10, left: 20, right: 30),
                                child: Text(
                                  'Một con người vui tính',
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 30,
                top: 390,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        print('SwipeCard');

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SwipeCard()),
                        );
                      },
                      child: Container(
                        width: 62.0,
                        height: 62.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0.0, 3.0),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.close,
                          size: 44,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('SwipeCard');

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SwipeCard()),
                        );
                      },
                      child: Container(
                        width: 62.0,
                        height: 62.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.deepPurple[400],
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0.0, 3.0),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.favorite_sharp,
                          size: 44,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
            child: InkWell(
              onTap: () {
                print('Tapped on InkWell');
              },
              child: Container(
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0.0, 1.0),
                    ),
                  ],

                  borderRadius:
                      BorderRadius.circular(10.0), // Adjust the border radius
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[350],
                        ),
                        child: const Icon(
                          Icons.heart_broken,
                          size: 45,
                          color: Colors.deepPurple,
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 16, right: 16)),
                            Text(
                              'Tạm dừng ghép đôi',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Bạn sẽ không nhận được gợi ý ghép đôi hoặc được gợi ý cho người khác. Bạn có thế tiếp tục cuộc trò chuyện hiện có trong Tab',
                              maxLines: 3,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                          ],
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
    );
  }
}
