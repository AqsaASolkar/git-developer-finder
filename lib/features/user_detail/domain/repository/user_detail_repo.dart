import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/core/error/failure.dart';
import 'package:git_developer_search_app/features/user_detail/data/data_source/user_detail_data_source.dart';
import 'package:git_developer_search_app/features/user_detail/data/repository/user_detail_repo_impl.dart';

import '../../../user_search/domain/entity/user.dart';

final userDetailRepoProvider = Provider<UserDetailRepository>((ref) =>
    UserDetailRepoImpl(
        userDetailDataSource: ref.watch(userDetailDataSourceProvider)));

abstract class UserDetailRepository {
  Future<Either<Failure, User>> getUserDetail({String? userName});
}
