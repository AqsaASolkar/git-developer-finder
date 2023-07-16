import 'package:flutter/material.dart';
import 'package:git_developer_search_app/extension/extension.dart';
import 'package:git_developer_search_app/features/history/history_page.dart';
import 'package:go_router/go_router.dart';

import '../../config/theme/app_colors.dart';
import '../user_search/presentation/view/user_search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _content(),
    );
  }

  Widget _content() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "DevFinder",
            style: TextStyle(fontSize: 30),
          ),
          20.height,
          TextButton(
              onPressed: () {
                context.pushNamed(UserSearchPage.path);
              },
              child: const Text("Search Developer",
                  style: TextStyle(fontSize: 18, color: color0079FE))),
          20.height,
          TextButton(
              onPressed: () {
                context.pushNamed(HistoryPage.path);
              },
              child: const Text(
                "Find history",
                style: TextStyle(fontSize: 18, color: color0079FE),
              ))
        ],
      ),
    );
  }
}
