import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/features/user_search/data/model/search_user_model.dart';
import 'package:git_developer_search_app/service/app_service.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/request_params/request_params.dart';
import 'user_serach_data_source_impl.dart';

final userSearchdataSourceProvider = Provider<SearchUserDataSource>(
    (ref) => SearchUserDataSourceImpl(apiClient: ref.watch(apiClientProvider)));

abstract class SearchUserDataSource {
  Future<Either<Failure, SearchUserModel>> searhUser({RequestParams? params});
}
