import 'package:dartz/dartz.dart';

import 'package:git_developer_search_app/core/error/failure.dart';

import 'package:git_developer_search_app/core/request_params/request_params.dart';

import 'package:git_developer_search_app/features/user_search/data/model/search_user_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../service/app_service.dart';
import 'user_search_data_source.dart';

@Injectable(as: SearchUserDataSource)
class SearchUserDataSourceImpl implements SearchUserDataSource {
  final ApiClient _apiClient;

  SearchUserDataSourceImpl({required ApiClient apiClient})
      : _apiClient = apiClient;
  final searchUserModelsEndpoints = '/search/users';

  @override
  Future<Either<Failure, SearchUserModel>> searhUser(
      {RequestParams? params}) async {
    var response = await _apiClient.get(
        path: searchUserModelsEndpoints, queryParams: params);
    return response.fold((failed) {
      return Left(failed);
    }, (r) {
      return Right(SearchUserModel.fromJson(r.data));
    });
  }
}
