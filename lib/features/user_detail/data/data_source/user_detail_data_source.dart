import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/core/error/failure.dart';
import 'package:git_developer_search_app/core/request_params/request_params.dart';
import 'package:git_developer_search_app/features/user_detail/data/data_source/user_detail_data_source_impl.dart';
import 'package:git_developer_search_app/features/user_detail/data/model/user_detail_model.dart';
import 'package:git_developer_search_app/service/app_service.dart';

import '../../../user_search/domain/entity/user.dart';

final userDetailDataSourceProvider = Provider<UserDetailDataSource>(
    (ref) => UserDetailDataSourceImpl(apiClient: ref.watch(apiClientProvider)));

abstract class UserDetailDataSource {
  Future<Either<Failure, User>> getUserDetail({String? userName});
}
