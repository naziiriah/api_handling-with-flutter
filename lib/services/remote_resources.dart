import 'package:practice_5/model/post.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  Future<List<Posts>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      postsFromJson(json);
    }
  }
}
