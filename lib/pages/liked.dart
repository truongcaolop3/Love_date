import 'package:flutter/material.dart';
import 'package:love_date/pages/suggest.dart';

class Liked extends StatelessWidget {
  const Liked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Đã thích bạn',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 34.0, right: 34.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Không có lượt thích mới, nhưng cũng không sao cả',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Thử chủ động hơn nhé',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  print('SuggestPage');

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuggestPage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    color: Colors.deepPurple[50],
                  ),
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'Xem gợi ý ghép đôi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple[400],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
