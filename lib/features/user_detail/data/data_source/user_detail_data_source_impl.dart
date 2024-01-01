import 'package:dartz/dartz.dart';
import 'package:git_developer_search_app/core/error/failure.dart';
import 'package:git_developer_search_app/features/user_detail/data/data_source/user_detail_data_source.dart';
import 'package:git_developer_search_app/features/user_search/domain/entity/user.dart';
import 'package:git_developer_search_app/service/app_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserDetailDataSource)
class UserDetailDataSourceImpl implements UserDetailDataSource {
  final ApiClient _apiClient;

  UserDetailDataSourceImpl({required ApiClient apiClient})
      : _apiClient = apiClient;
  final getUserDetailEndPoint = "/users";

  @override
  Future<Either<Failure, User>> getUserDetail({String? userName}) async {
    var response =
        await _apiClient.get(path: '$getUserDetailEndPoint/$userName');
    return response.fold((failed) {
      return Left(failed);
    }, (r) {
      return Right(User.fromJson(r.data));
    });
  }
}
