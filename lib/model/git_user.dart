class GitUser {
  final String image;
  final String id;
  final String url;
  final bool isLike;

  GitUser(this.image, this.id, this.url, this.isLike);

  GitUser.fromJson(Map<String, dynamic> json)
      : image = json['avatar_url'],
        id = json['login'],
        url = json['url'],
        isLike = false;

  Map<String, dynamic> toJson() => {
        'image': image,
        'id': id,
        'url': url,
        'isLike': isLike,
      };
}

class GitUsers {
  final List<GitUser> items;
  GitUsers(this.items);

  GitUsers.fromJson(Map<String, dynamic> json) : items = List<GitUser>.from(json["items"].map((x) => GitUser.fromJson(x)));
}
