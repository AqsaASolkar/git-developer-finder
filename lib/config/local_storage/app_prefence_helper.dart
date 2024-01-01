import 'package:shared_preferences/shared_preferences.dart';

import '../../features/history/history_page.dart';

class AppPreference {
  static String userSearchKey = 'USER_SEARCH';
  Future<void> setUserSearchHistory(
      {required String userSearch, bool isDelete = false}) async {
    if (isDelete) {
      userSearchHistoryList.remove(userSearch);
    } else {
      if (!userSearchHistoryList.contains(userSearch)) {
        userSearchHistoryList.add(userSearch);
      }
    }
    var preferences = await SharedPreferences.getInstance();
    preferences.setStringList(userSearchKey, userSearchHistoryList);
  }

  Future<List<String>> getUserSearchHistory() async {
    var _preferences = await SharedPreferences.getInstance();
    return _preferences.getStringList(userSearchKey) ?? [];
  }
}
