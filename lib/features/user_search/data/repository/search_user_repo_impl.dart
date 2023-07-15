import 'package:dartz/dartz.dart';

import 'package:git_developer_search_app/core/error/failure.dart';

import 'package:git_developer_search_app/core/request_params/request_params.dart';

import 'package:git_developer_search_app/features/user_search/data/model/search_user_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/search_user_repo.dart';
import '../data_source/user_search_data_source.dart';

@Injectable(as: SearchUserRepository)
class SearchUserRepositoryImpl implements SearchUserRepository {
  final SearchUserDataSource _dataSource;
  SearchUserRepositoryImpl({required SearchUserDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<Either<Failure, SearchUserModel>> searchUser(
      {required RequestParams params}) async {
    var response = await _dataSource.searhUser(params: params);
    return response.fold((failed) {
      return Left(failed);
    }, (r) {
      return Right(r);
    });
  }
}
