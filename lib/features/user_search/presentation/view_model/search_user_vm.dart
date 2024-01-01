import 'package:git_developer_search_app/config/local_storage/app_prefence_helper.dart';
import 'package:git_developer_search_app/core/state/base_state.dart';
import 'package:git_developer_search_app/features/user_search/domain/use_case/search_user_use_case.dart';
import 'package:git_developer_search_app/features/user_search/presentation/interface/user_search_interface.dart';
import 'package:riverpod/riverpod.dart';

final searchUserProvider =
    StateNotifierProvider<SearchUserVmStateNotifier, BaseState>(
        (ref) => SearchUserVmStateNotifier(ref.watch(searchUseCaseProvider)));

class SearchUserVmStateNotifier extends StateNotifier<BaseState> {
  SearchUserVmStateNotifier(this._searchUserUseCase) : super(InitialState());
  final SearchUserUseCase _searchUserUseCase;
  UserSearchInterface? userSearchInterface;

  Future<void> searchUser({required SearchUserReqParams queryParams}) async {
    state = const LoadingState();
    try {
      var response = await _searchUserUseCase.searchUser(queryParams);
      response.fold((l) {
        userSearchInterface?.onError();
        return state = ErrorState(data: l);
      }, (r) {
        userSearchInterface?.onSuccess();
        AppPreference().setUserSearchHistory(userSearch: queryParams.q);
        return state = SuccessState(data: r);
      });
    } catch (e) {
      userSearchInterface?.onError();
      state = ErrorState(data: e.toString());
    }
  }

  clearState() {
    state = InitialState();
  }
}
