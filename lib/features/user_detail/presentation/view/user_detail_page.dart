import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/extension/extension.dart';
import 'package:git_developer_search_app/features/user_detail/presentation/view_model/user_detail_vm.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/state/base_state.dart';
import '../../../user_search/domain/entity/user.dart';
import 'package:intl/intl.dart';

class UserDetailPage extends ConsumerStatefulWidget {
  static String path = "user_detail";
  final String userName;
  const UserDetailPage({Key? key, required this.userName}) : super(key: key);

  @override
  _UserDetailPageState createState() => _UserDetailPageState();
}

class _UserDetailPageState extends ConsumerState<UserDetailPage> {
  var userState;

  @override
  void initState() {
    Future.microtask(() {
      userState = ref
          .read(userDetailProvider.notifier)
          .getUserDetail(requestParams: widget.userName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    userState = ref.watch(userDetailProvider);
    return Scaffold(
      body: _content(),
      appBar: AppBar(
        title: _title(),
        centerTitle: true,
      ),
    );
  }

  Widget _content() {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.height,
          _userDetail(),
          // 20.height,
          // _userList()
        ],
      ),
    );
  }

  Widget _title() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "User Profile",
        style: TextStyle(
            fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget _userDetail() {
    return Container(
        child: userState is LoadingState
            ? const Expanded(
                child: Center(
                    child: CircularProgressIndicator(
                color: color0079FE,
              )))
            : userState is SuccessState<User>
                ? _detail()
                : userState is ErrorState<Failure>
                    ? const Text("Something went wrong")
                    : const SizedBox.shrink());
  }

  Widget _detail() {
    DateTime.parse(userState.data.createdAt);
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: colorSecondary, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _profile(),
          20.height,
          Text(
            userState.data.bio ?? "This Profile has no bio",
            style: const TextStyle(fontSize: 18),
          ),
          20.height,
          _followerFollowingCount(),
          20.height,
          _repoLinkAndLocation()
        ],
      ),
    );
  }

  Widget _profile() {
    var time = DateFormat("yyyy-MM-dd").parse(userState.data.createdAt);
    return ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CachedNetworkImage(
            height: 150,
            fit: BoxFit.cover,
            imageUrl: userState.data.avatarUrl ?? "",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        title: Text(
          userState.data.login ?? "",
          textAlign: TextAlign.justify,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          "joined on ${time.day}-${time.month}-${time.year}",
          textAlign: TextAlign.justify,
          style: TextStyle(
              color: Theme.of(context).iconTheme.color,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ));
  }

  Widget _followerFollowingCount() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _followerFollowingCountTie(
              "Repos", userState.data.publicRepos.toString()),
          _followerFollowingCountTie(
              "Followers", userState.data.followers.toString()),
          _followerFollowingCountTie(
              "Following", userState.data.following.toString()),
        ],
      ),
    );
  }

  Widget _followerFollowingCountTie(String key, String value) {
    return Column(
      children: [
        Text(key, style: const TextStyle(fontSize: 16, color: colorC0C0C0)),
        10.height,
        Text(value, style: const TextStyle(fontSize: 18))
      ],
    );
  }

  Widget _repoLinkAndLocation() {
    return Column(children: [
      _repoLinkAndLocationTile(
          iconData: Icons.location_on_rounded, title: userState.data.location),
      // _repoLinkAndLocationTile(
      //     iconData: Icons.link, title: userState.data.reposUrl, repoLink: true),
      _repoLinkAndLocationTile(
          iconData: Icons.business, title: userState.data.company),
    ]);
  }

  Widget _repoLinkAndLocationTile(
      {required IconData iconData,
      required String? title,
      bool repoLink = false}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        iconData,
        color: Theme.of(context).iconTheme.color,
        size: 30,
      ),
      title: InkWell(
        onTap: repoLink && title != null && title.isNotEmpty
            ? () {
                _launchUrl(url: "https://github.com/${userState.data.login}/");
              }
            : null,
        child: Text(title ?? "Not available",
            style: const TextStyle(color: colorC0C0C0)),
      ),
    );
  }

  Future<void> _launchUrl({required String url}) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
