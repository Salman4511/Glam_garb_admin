
class Image {
  String? url;
  String? id;

  Image({this.url, this.id});

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
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
