import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/config/dependency_injection/dependency_injection.dart';

final dioProvider = Provider((ref) => getIt<Dio>());
