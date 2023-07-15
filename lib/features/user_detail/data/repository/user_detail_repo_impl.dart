import 'package:dartz/dartz.dart';
import 'package:git_developer_search_app/core/error/failure.dart';
import 'package:git_developer_search_app/core/request_params/request_params.dart';
import 'package:git_developer_search_app/features/user_detail/data/data_source/user_detail_data_source.dart';
import 'package:git_developer_search_app/features/user_detail/data/model/user_detail_model.dart';
import 'package:git_developer_search_app/features/user_detail/domain/repository/user_detail_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../user_search/domain/entity/user.dart';

@Injectable(as: UserDetailRepository)
class UserDetailRepoImpl implements UserDetailRepository {
  final UserDetailDataSource _userDetailDataSource;
  UserDetailRepoImpl({required UserDetailDataSource userDetailDataSource})
      : _userDetailDataSource = userDetailDataSource;

  @override
  Future<Either<Failure, User>> getUserDetail({String? userName}) async {
    var response =
        await _userDetailDataSource.getUserDetail(userName: userName);
    return response.fold((failed) {
      return Left(failed);
    }, (r) {
      return Right(r);
    });
  }
}
