import 'package:flutter/material.dart';
import 'package:search_git_users/view/search/search_screen.dart';
import 'package:search_git_users/view/storage/storage_screen.dart';
import 'package:search_git_users/view/temp/temp_screen.dart';

List<Widget> views = [
  const SearchScreen(),
  const StoragerScreen(),
  const TempScreen()
];

List<Widget> viewIcons = [
  const Tab(icon: Icon(Icons.search, color: Colors.black)),
  const Tab(icon: Icon(Icons.storage, color: Colors.black)),
  const Tab(icon: Icon(Icons.directions_bike, color: Colors.black))
];

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  TabBar _buildTabBar() {
    return TabBar(
      tabs: viewIcons,
    );
  }

  TabBarView _buildTabBarView() {
    return TabBarView(children: views);
  }

  MaterialApp _buildBaseView() {
    return MaterialApp(
      home: DefaultTabController(
          length: views.length,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: viewIcons,
              ),
              title: const Text('Tabs Demo'),
            ),
            body: TabBarView(
              children: views,
            ),
          )),
    );
  }

  MaterialApp _buildBaseView1() {
    return MaterialApp(
      home: DefaultTabController(
          length: views.length,
          child: Scaffold(
              appBar: AppBar(
                title: const Text('Tabs Demo'),
              ),
              body: Column(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: _buildTabBarView(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: _buildTabBar(),
                      decoration: const BoxDecoration(),
                    ),
                  ),
                ],
              )
              // TabBarView(
              //         children: views,
              //       ),
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _buildBaseView1(),
    );
  }
}
