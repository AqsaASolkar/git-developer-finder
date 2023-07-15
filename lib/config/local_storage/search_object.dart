class SearchObject {
  SearchObject({
    this.name,
    this.searchResult,
  });

  SearchObject.fromJson(dynamic json) {
    name = json['name'];
    searchResult = json['search_result'];
  }
  String? name;
  bool? searchResult;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['search_result'] = searchResult;
    return map;
  }
}
