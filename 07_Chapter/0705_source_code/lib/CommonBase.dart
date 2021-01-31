import 'package:flutter/material.dart';

import 'CommonUtil.dart';

class CommonBase extends StatelessWidget {
  final tabs = [
    KEY_WORDS.Vacation.value,
    KEY_WORDS.Sea.value,
    KEY_WORDS.Fireworks.value,
    KEY_WORDS.Sky.value,
    KEY_WORDS.Aurora.value,
    KEY_WORDS.Clouds.value,
    KEY_WORDS.Sunset.value
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "★★ sample flutter search pixabay ★★",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          backgroundColor: Colors.redAccent[700],
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white.withOpacity(0.7),
            unselectedLabelStyle: TextStyle(fontSize: 15.0),
            labelColor: Colors.yellow,
            labelStyle: TextStyle(fontSize: 22.0),
            indicatorWeight: 2.0,
            tabs: [
              for (final tab in tabs) Tab(text: tab),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Page1(),
            // Page2(),
            // Page3(),
            // Page4(),
            // Page5(),
            // Page6(),
            // Page7()
          ],
        ),
      ),
    );
  }
}
