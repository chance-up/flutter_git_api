import 'package:http/http.dart' as http;

class GitUserApi {
  final baseUrl = 'https://api.github.com/search/users';

  Future<dynamic> getGitUsers(String id) {
    final url = baseUrl + "?q=" + id;
    return http.get(Uri.parse(url));
  }
}
