import 'package:dartz/dartz.dart';
import 'package:git_developer_search_app/core/error/failure.dart';
import 'package:git_developer_search_app/features/user_detail/domain/repository/user_detail_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

import '../../../user_search/domain/entity/user.dart';

final userDetailUseCaseProvider = Provider<UserDetailUseCase>((ref) =>
    UserDetailUseCase(userDetailRepository: ref.watch(userDetailRepoProvider)));

@injectable
class UserDetailUseCase {
  final UserDetailRepository _userDetailRepository;
  UserDetailUseCase({required UserDetailRepository userDetailRepository})
      : _userDetailRepository = userDetailRepository;

  Future<Either<Failure, User>> getUserDetail(
      {required String userDetailRequestParams}) async {
    return await _userDetailRepository.getUserDetail(
        userName: userDetailRequestParams);
  }
}
