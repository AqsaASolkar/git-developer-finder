import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/core/error/failure.dart';
import 'package:git_developer_search_app/core/state/base_state.dart';
import 'package:git_developer_search_app/extension/extension.dart';
import 'package:git_developer_search_app/features/user_detail/presentation/view/user_detail_page.dart';
import 'package:git_developer_search_app/features/user_search/data/model/search_user_model.dart';
import 'package:git_developer_search_app/features/user_search/domain/use_case/search_user_use_case.dart';
import 'package:git_developer_search_app/features/user_search/presentation/interface/user_search_interface.dart';
import 'package:git_developer_search_app/features/user_search/presentation/view_model/search_user_vm.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/theme/app_colors.dart';
import '../../domain/entity/user.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserSearchPage extends ConsumerStatefulWidget {
  static const path = '/user_search';
  final String? userName;
  const UserSearchPage({super.key, this.userName});

  @override
  ConsumerState<UserSearchPage> createState() => _UserSearchPageState();
}

class _UserSearchPageState extends ConsumerState<UserSearchPage> {
  var userListState;
  Timer? _debounce;
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    if (widget.userName != null && widget.userName!.isNotEmpty) {
      _searchController.text = widget.userName!;
      Future.microtask(() => onSearch(_searchController.text));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    userListState = ref.watch(searchUserProvider);
    return Scaffold(
      appBar: AppBar(
        title: _title(),
        centerTitle: true,
      ),
      body: SafeArea(child: _content()),
    );
  }

  Widget _content() {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [20.height, _searchBar(), 20.height, _userList()],
      ),
    );
  }

  Widget _title() {
    return const Text(
      "Search github user",
      style: TextStyle(
          fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400),
    );
  }

  void onSearch(String value) {
    ref
        .read(searchUserProvider.notifier)
        .searchUser(queryParams: SearchUserReqParams(q: value));
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: TextFormField(
        controller: _searchController,
        onChanged: (value) {
          if (_debounce?.isActive ?? false) _debounce?.cancel();
          _debounce = Timer(const Duration(milliseconds: 500), () {
            (value.length > 3)
                ? onSearch(value)
                : ref.read(searchUserProvider.notifier).clearState();
          });
        },
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          hintText: "Search",
          prefixIcon: Icon(
            Icons.search,
            size: 32,
            color: color0079FE,
          ),
        ),
      ),
    );
  }

  Widget _userList() {
    return userListState is LoadingState
        ? const Expanded(
            child: Center(
                child: CircularProgressIndicator(
            color: color0079FE,
          )))
        : userListState is SuccessState<SearchUserModel>
            ? Expanded(
                child: userListState.data.userList.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: userListState.data.userList.length,
                        itemBuilder: (BuildContext context, int index) {
                          User user = userListState.data.userList[index];
                          return Container(
                            child: _userTile(user),
                          );
                        })
                    : const Center(
                        child: Text("No user found!",
                            style: TextStyle(color: color0079FE, fontSize: 20)),
                      ),
              )
            : userListState is ErrorState<Failure>
                ? Expanded(
                    child: Center(
                    child: Text(userListState.data.msg ?? ""),
                  ))
                : const SizedBox.shrink();
  }

  void navigateToUserDetails(User user) {
    _searchController.text = '';
    ref.read(searchUserProvider.notifier).clearState();
    context.pushNamed('user_detail',
        pathParameters: {'userName': user.login ?? ""});
  }

  Widget _userTile(User user) {
    return GestureDetector(
      onTap: () {
        navigateToUserDetails(user);
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: colorSecondary, borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: CachedNetworkImage(
              height: 40,
              width: 40,
              fit: BoxFit.cover,
              imageUrl: user.avatarUrl ?? "",
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          title: Text(
            user.login ?? "",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          trailing: TextButton(
            onPressed: () {
              navigateToUserDetails(user);
            },
            child: const Text(
              "View \nProfile",
              style: TextStyle(
                  color: color0079FE, decoration: TextDecoration.underline),
            ),
          ),
        ),
      ),
    );
  }
}
