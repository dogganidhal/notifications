class JsonItems {
  String title;
  List<Texts> text;

  JsonItems({this.text, this.title});

  factory JsonItems.fromJson(Map<String, dynamic> json) {
    var list = json['TEXT'] as List;
    print(list.runtimeType); //returns List<dynamic>
    List<Texts> imagesList = list.map((i) => Texts.fromJson(i)).toList();

    return JsonItems(
      title: json["title"] as String,
      text: imagesList,
    );
  }
}

class Texts {
  String text;
  Texts({this.text});
  factory Texts.fromJson(Map<String, dynamic> parsedJson) {
    return Texts(
      text: parsedJson['text'],
    );
  }
}
