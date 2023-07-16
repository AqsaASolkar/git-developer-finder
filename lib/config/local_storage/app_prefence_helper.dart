import 'dart:convert';

import 'package:git_developer_search_app/config/local_storage/search_object.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/history/history_page.dart';

class AppPreference {
  static String USER_SEARCH_KEY = 'USER_SEARCH';
  Future<void> setUserSearchHistory(
      {required String userSearch, bool isDelete = false}) async {
    if (isDelete) {
      userSearchHistoryList.remove(userSearch);
    } else {
      if (!userSearchHistoryList.contains(userSearch)) {
        userSearchHistoryList.add(userSearch);
      }
    }
    var _preferences = await SharedPreferences.getInstance();
    _preferences.setStringList(USER_SEARCH_KEY, userSearchHistoryList);
  }

  Future<List<String>> getUserSearchHistory() async {
    var _preferences = await SharedPreferences.getInstance();
    return _preferences.getStringList(USER_SEARCH_KEY) ?? [];
  }
}
