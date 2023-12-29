import 'package:flutter/material.dart';
import 'package:love_date/util/tinder_card.dart';

class SwipeCard extends StatefulWidget {
  const SwipeCard({super.key});

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  late PageController pageController;
  late int _currentPage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentPage = 0;
    pageController = PageController(
      initialPage: _currentPage,
      // keepPage: true,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void onAddButtonTapped(int index) {
    // use this to animate to the page
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 4000), curve: Curves.ease);

    // or this to jump to it without animating
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.black38,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Container(
          width: 80,
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: const Row(
            children: [
              Text(
                'Huế',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.expand_more_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.all(9),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black54,
            ),
            child: IconButton(
              icon: const Icon(Icons.more_horiz_outlined),
              onPressed: () {},
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.loose,
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: Data.profiles.length,
            itemBuilder: (context, index) {
              return ListView(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        // Data.profiles.
                        Data.profiles[index]['image'],
                        width: MediaQuery.of(context).size.width,
                        height: 525.0,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 14.0,
                          left: 16,
                          right: 16,
                          bottom: 16,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  // 'Trường,  21',
                                  '${Data.profiles[index]['name']}, ${Data.profiles[index]['age']}',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  Data.profiles[index]['description'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(
                                      Icons.favorite_rounded,
                                      size: 26,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: Text(
                                      Data.profiles[index]['status'],
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(
                                      Icons.location_on,
                                      size: 26,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: Text(
                                      Data.profiles[index]['address'],
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(
                                      Icons.person,
                                      size: 26,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: Text(
                                      Data.profiles[index]['height'],
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(
                                      Icons.badge_sharp,
                                      size: 26,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: Text(
                                      Data.profiles[index]['live'],
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(
                                      Icons.smoking_rooms_outlined,
                                      size: 26,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: Text(
                                      Data.profiles[index]['smoke'],
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(
                                      Icons.more_horiz_sharp,
                                      size: 26,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Text(
                                      'Xem thêm về Trường',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 200),
                              width: 182,
                              height: 36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black26,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        child: Image.asset(
                                          'assets/images/game.png',
                                          width: 26,
                                          height: 26,
                                          // color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        child: const Text(
                                          'Trò chơi điện tử',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black87),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            if (Data.profiles[index]["images"].length > 0) ...[
                              for (final item in Data.profiles[index]
                                  ['images']) ...[
                                SizedBox(
                                  height: 16,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        item,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 410,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.25,
            bottom: 25, // Adjust the right position as needed
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    print('SwipeCard');

                    setState(() {
                      _currentPage = _currentPage + 1;
                      onAddButtonTapped(_currentPage);
                    });
                    debugPrint("$_currentPage");
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
                SizedBox(
                  width: 60,
                ),
                InkWell(
                  onTap: () {
                    print('SwipeCard');

                    setState(() {
                      _currentPage = _currentPage + 1;
                      onAddButtonTapped(_currentPage);
                    });
                    debugPrint("$_currentPage");
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
    );
  }
}
