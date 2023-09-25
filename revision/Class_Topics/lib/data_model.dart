class DataModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  DataModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  DataModel.fromJson(Map<String, dynamic> json)
      : userId = json['userId'] as int?,
        id = json['id'] as int?,
        title = json['title'] as String?,
        body = json['body'] as String?;

  Map<String, dynamic> toJson() =>
      {'userId': userId, 'id': id, 'title': title, 'body': body};
}


//model function ek json object =>dart