// class ModelColumn {
//   String image;
//   String text1;
//   String text2;
//   String text3;
//   ModelColumn(
//       {required this.image,
//       required this.text1,
//       required this.text2,
//       required this.text3});
// }

class ModelColumn {
  String? image;
  String? url;
  String? text1;
  String? text2;
  String? text3;

  ModelColumn({
    required this.image,
    required this.url,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  factory ModelColumn.fromjson(json) {
    return ModelColumn(
      image: json["urlToImage"],
      url: json["url"],
      text1: json["title"],
      text2: json["author"],
      text3: json["description"],
    );
  }
}
