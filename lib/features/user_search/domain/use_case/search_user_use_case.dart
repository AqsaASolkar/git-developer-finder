import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/core/request_params/request_params.dart';
import 'package:git_developer_search_app/features/user_search/data/model/search_user_model.dart';
import 'package:git_developer_search_app/features/user_search/domain/repository/search_user_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';

final searchUseCaseProvider = Provider<SearchUserUseCase>((ref) =>
    SearchUserUseCase(
        searchUserRepository: ref.watch(SearchRespositoryProvider)));

@injectable
class SearchUserUseCase {
  final SearchUserRepository _repository;
  SearchUserUseCase({required SearchUserRepository searchUserRepository})
      : _repository = searchUserRepository;

  Future<Either<Failure, SearchUserModel>> searchUser(
      SearchUserReqParams searchUserReqParams) async {
    return await _repository.searchUser(params: searchUserReqParams);
  }
}

class SearchUserReqParams extends RequestParams {
  final String q;
  SearchUserReqParams({required this.q});

  @override
  Map<String, dynamic> toJson() {
    return {"q": q};
  }
}
