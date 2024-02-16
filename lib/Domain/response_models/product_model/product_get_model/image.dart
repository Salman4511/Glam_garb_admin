class Images {
  String? url;
  String? id;

  Images({this.url, this.id});

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      url: json['url'] as String?,
      id: json['_id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      '_id': id,
    };
  }
}
