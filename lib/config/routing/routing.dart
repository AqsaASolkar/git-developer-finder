import 'package:git_developer_search_app/features/history/history_page.dart';
import 'package:git_developer_search_app/features/user_detail/presentation/view/user_detail_page.dart';
import 'package:go_router/go_router.dart';

import '../../features/dashboard/home_page.dart';
import '../../features/user_search/presentation/view/user_search_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: UserSearchPage.path,
      path: UserSearchPage.path,
      builder: (context, state) {
        //var userName = state.extra == null ? "" : state.extra! as String;
        var user = state.extra != null ? state.extra as String : null;
        return UserSearchPage(
          userName: user,
        );
        // if (state.queryParameters["userName"] != null &&
        //     state.queryParameters["userName"]!.isNotEmpty) {
        //   return UserSearchPage(
        //       userName: state.queryParameters["userName"] ?? "");
        // } else {
        //   return const UserSearchPage();
        // }
      },
    ),
    GoRoute(
      name: UserDetailPage.path,
      path: "/${UserDetailPage.path}/:userName",
      builder: (context, state) =>
          UserDetailPage(userName: state.pathParameters["userName"] ?? ""),
    ),
    GoRoute(
      name: HistoryPage.path,
      path: HistoryPage.path,
      builder: (context, state) => const HistoryPage(),
    ),
  ],
);
