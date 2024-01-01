import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/config/local_storage/app_prefence_helper.dart';
import 'package:go_router/go_router.dart';

import '../../config/theme/app_colors.dart';
import '../user_search/presentation/view/user_search_page.dart';

List<String> userSearchHistoryList = [];

class HistoryPage extends ConsumerStatefulWidget {
  static String path = "/history_page";
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<HistoryPage> {
  @override
  void initState() {
    getSearchHistory();
    super.initState();
  }

  Future<void> getSearchHistory() async {
    userSearchHistoryList = await AppPreference().getUserSearchHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
        centerTitle: true,
      ),
      body: _content(),
    );
  }

  Widget _title() {
    return const Text(
      "Search History",
      style: TextStyle(
          fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400),
    );
  }

  Widget _content() {
    return Container(
      child: userSearchHistoryList.isNotEmpty
          ? ListView.builder(
              itemCount: userSearchHistoryList.length,
              itemBuilder: (BuildContext context, int index) {
                return _userTile(userSearchHistoryList[index]);
              })
          : const Center(
              child: Text("No Search History Found!",
                  style: TextStyle(color: color0079FE, fontSize: 20)),
            ),
    );
  }

  Widget _userTile(String user) {
    return GestureDetector(
      onTap: () {
        context.pushReplacement(UserSearchPage.path, extra: user);
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: colorSecondary, borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Icon(Icons.search),
          trailing: IconButton(
              onPressed: () async {
                AppPreference()
                    .setUserSearchHistory(userSearch: user, isDelete: true);
                getSearchHistory();
                setState(() {});
              },
              icon: const Icon(Icons.clear)),
          title: Text(
            user,
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
