// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
    Posts({
        required this.userId,
        required this.it,
        required this.title,
        this.body,
    });

    int userId;
    int it;
    String title;
    String? body;

    factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        userId: json["userId"],
        it: json["it"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "it": it,
        "title": title,
        "body": body,
    };
}
