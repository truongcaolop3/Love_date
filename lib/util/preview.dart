import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  const Preview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/1.jpg',
              width: MediaQuery.of(context).size.width,
              height: 490,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 14.0, left: 16, right: 16, bottom: 16),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: const Text(
                        'Trường,  21',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: const Text(
                            'Nam',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            ' (không hiển thị)',
                            style: TextStyle(
                                fontSize: 14, color: Colors.deepPurple[400]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: const Text(
                        'Một người vui tính',
                        style: TextStyle(fontSize: 18, color: Colors.black87),
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
                          child: const Text(
                            'Đang tìm mối quan hệ lâu dài',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
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
                          child: const Text(
                            'Đang ở Huế',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
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
                          child: const Text(
                            '163 cm',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
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
                          child: const Text(
                            'Dân Phú Yên',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
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
                          child: const Text(
                            'Không bao giờ',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
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
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
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
                                    fontSize: 16, color: Colors.black87),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                          'assets/images/2.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: 410,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
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
                          'assets/images/4.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: 410,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
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
                          'assets/images/5.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: 410,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
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
                          'assets/images/6.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: 410,
                          fit: BoxFit.cover,
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
    );
  }
}
