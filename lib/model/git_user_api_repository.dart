import 'package:search_git_users/model/git_user_api.dart';

class GitUserApiRepository {
  Future<dynamic> getGitUsers(String id) => GitUserApi().getGitUsers(id);
}
