import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/*  "login": "ami7",
    "id": 2931892,
    "node_id": "MDQ6VXNlcjI5MzE4OTI=",
    "avatar_url": "https://avatars.githubusercontent.com/u/2931892?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/ami7",
    "html_url": "https://github.com/ami7",
    "followers_url": "https://api.github.com/users/ami7/followers",
    "following_url": "https://api.github.com/users/ami7/following{/other_user}",
    "gists_url": "https://api.github.com/users/ami7/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/ami7/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/ami7/subscriptions",
    "organizations_url": "https://api.github.com/users/ami7/orgs",
    "repos_url": "https://api.github.com/users/ami7/repos",
    "events_url": "https://api.github.com/users/ami7/events{/privacy}",
    "received_events_url": "https://api.github.com/users/ami7/received_events",
    "type": "User",
    "site_admin": false,
    "name": null,
    "company": null,
    "blog": "",
    "location": null,
    "email": null,
    "hireable": null,
    "bio": null,
    "twitter_username": null,
    "public_repos": 1,
    "public_gists": 0,
    "followers": 1,
    "following": 0,
    "created_at": "2012-11-30T15:21:49Z",
    "updated_at": "2015-04-07T17:42:31Z"*/
@freezed
class User with _$User {
  const User._();
  factory User(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'repos_url') String? reposUrl,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "company") String? company,
      @JsonKey(name: "blog") String? blog,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "public_repos") int? publicRepos,
      @JsonKey(name: 'followers') int? followers,
      @JsonKey(name: 'following') int? following,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt}) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
