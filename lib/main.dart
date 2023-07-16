import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/config/dependency_injection/dependency_injection.dart';

import 'config/theme/app_theme.dart';
import 'features/user_search/presentation/view/user_search_page.dart';
import '././config/routing/routing.dart';

void main() {
  configureDependencyInjection();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Flutter Demo',
      theme: AppTheme.darkTheme,
      //home: const UserSearchPage(),
    );
  }
}
