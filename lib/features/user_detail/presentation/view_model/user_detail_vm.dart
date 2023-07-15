import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/features/user_detail/domain/use_case/user_detail_user_case.dart';

import '../../../../core/state/base_state.dart';

final userDetailProvider =
    StateNotifierProvider<UserDetailStateNotifier, BaseState>(
        (ref) => UserDetailStateNotifier(ref.watch(userDetailUseCaseProvider)));

class UserDetailStateNotifier extends StateNotifier<BaseState> {
  final UserDetailUseCase _userDetailUseCase;
  UserDetailStateNotifier(this._userDetailUseCase) : super(InitialState());

  Future<void> getUserDetail({required String requestParams}) async {
    state = const LoadingState();
    try {
      var response = await _userDetailUseCase.getUserDetail(
          userDetailRequestParams: requestParams);
      response.fold((l) {
        return state = ErrorState(data: l);
      }, (r) {
        return state = SuccessState(data: r);
      });
    } catch (e) {
      state = ErrorState(data: e.toString());
    }
  }
}
