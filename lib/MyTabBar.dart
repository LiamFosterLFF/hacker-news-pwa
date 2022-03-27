import 'package:flutter/material.dart';
import 'package:hacker_news_flutter/views/Top.dart';
import 'package:hacker_news_flutter/views/New.dart';
import 'package:hacker_news_flutter/views/Show.dart';
import 'package:hacker_news_flutter/views/Ask.dart';
import 'package:hacker_news_flutter/views/Jobs.dart';


class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "Top"),
                Tab(text: "New"),
                Tab(text: "Show"),
                Tab(text: "Ask"),
                Tab(text: "Jobs"),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Top(),
              New(),
              Show(),
              Ask(),
              Jobs(),
            ],
          ),
        ),
      ),
    );
  }
}