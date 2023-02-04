import 'package:flutter/material.dart';
import 'package:mynotes/Page/Tabbar/home.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.plumbing_sharp)),
                Tab(icon: Icon(Icons.numbers)),
                Tab(icon: Icon(Icons.emoji_people)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              TabView(),
              TabView(),
              TabView(),
              TabView()
            ],
          ),
        ),
      ),
    );
  }
}