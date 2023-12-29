import 'package:flutter/material.dart';
import 'package:love_date/util/preview.dart';
import 'package:love_date/util/settingaccoung.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hồ sơ hẹn hò',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          bottom: const PreferredSize(
            preferredSize:
                Size.fromHeight(-8.0), // Adjust the height of the divider
            child: Divider(
              color: Color.fromARGB(
                  255, 223, 223, 223), // Set the color of the divider
              height: 1.0, // Adjust the thickness of the divider
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                height: 44.0,
                child: const TabBar(
                  indicatorColor: Colors.deepPurple,
                  tabAlignment: TabAlignment.fill,
                  isScrollable: false,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 2.0,
                  labelStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                  tabs: <Widget>[
                    Tab(
                      text: 'Chỉnh sửa hồ sơ',
                    ),
                    Tab(
                      text: "Xem trước hồ sơ",
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    SettingAccount(),
                    Preview(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
