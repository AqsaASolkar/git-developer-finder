import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/features/user_search/data/model/search_user_model.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/request_params/request_params.dart';
import '../../data/data_source/user_search_data_source.dart';
import '../../data/repository/search_user_repo_impl.dart';

final SearchRespositoryProvider = Provider<SearchUserRepository>((ref) =>
    SearchUserRepositoryImpl(
        dataSource: ref.watch(userSearchdataSourceProvider)));

abstract class SearchUserRepository {
  Future<Either<Failure, SearchUserModel>> searchUser(
      {required RequestParams params});
}
