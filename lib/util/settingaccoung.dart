import 'package:flutter/material.dart';

class SettingAccount extends StatelessWidget {
  const SettingAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 14, left: 16, right: 16, bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: const Text(
                      'Ảnh và gợi ý',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: const Text(
                      'Kéo rồi thả ảnh và gợi ý theo thứ tự mà bạn muốn xuất hiện',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54),
                      maxLines: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                  child: SizedBox(
                    height: 155,
                    child: Row(
                      children: <Widget>[
                        promocard(
                          'assets/images/1.jpg',
                          '6 Th12',
                        ),
                        promocard(
                          'assets/images/2.jpg',
                          '5 Th12',
                        ),
                        promocard(
                          'assets/images/3.jpg',
                          '7 Th12',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                  child: SizedBox(
                    height: 155,
                    child: Row(
                      children: <Widget>[
                        promocard(
                          'assets/images/6.jpg',
                          '6 Th12',
                        ),
                        promocard(
                          'assets/images/5.jpg',
                          '5 Th12',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity, // Chiếm toàn bộ chiều ngang
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            width: double.infinity, // Chiếm toàn bộ chiều ngang
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black12, // Màu nâu
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons
                                                .photo_size_select_actual_rounded,
                                            color: Colors
                                                .black, // Màu trắng cho Icon
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      const Text('Thêm Ảnh',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black12, // Màu nâu
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.question_mark_rounded,
                                            color: Colors
                                                .black, // Màu trắng cho Icon
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      const Text('Thêm gợi ý',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      'Thêm ảnh hoặc gợi ý',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Text(
                            'Ảnh và gợi ý',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Text(
                            'Không chia sẻ số điện thoại, địa chỉ hoặc email vì mọi người trên tính năng Hẹn hò đều có thể xem phần giới thiệu của bạn.',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54),
                            maxLines: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller:
                        TextEditingController(text: 'Một người vui tính'),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mô tả bản thân',
                      labelStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 20,
                  child: Text(
                    '15/500',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: const Text(
                            'Thông tin cơ bản',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          controller: TextEditingController(text: 'Trường'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Tên',
                            labelStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          controller: TextEditingController(text: '21'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Tuổi',
                            labelStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          controller: TextEditingController(text: 'Huế'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Vị trí hẹn hò',
                            labelStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          controller: TextEditingController(text: 'Nam'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Giới tính',
                            labelStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          controller: TextEditingController(text: '163cm'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Chiều cao',
                            labelStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          controller: TextEditingController(text: 'Sơn hòa'),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Quê quán',
                            labelStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget promocard(Image, Times) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.26 / 4,
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                    top: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(Image)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.1), // Màu ở cuối gradient
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 18,
                right: 16,
                child: Container(
                  width: 34.0,
                  height: 34.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0.0, 3.0),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.close_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
