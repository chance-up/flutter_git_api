import 'dart:math';

import 'package:flutter/material.dart';
import 'package:search_git_users/model/git_user.dart';
import 'package:search_git_users/model/git_user_api_repository.dart';
import 'dart:developer';
import 'dart:convert';

class SearchViewModel extends ChangeNotifier {
  List<GitUser> _gitUsers = List.empty();
  List<GitUser> get gitUsers => _gitUsers;
  String searchText = "";

  void update() {
    notifyListeners();
  }

  void searchUsers() async {
    final result = await GitUserApiRepository().getGitUsers(searchText);
    GitUsers gitUsers = GitUsers.fromJson(json.decode(result.body));
    List<GitUser> gitUserList = gitUsers.items;
    _gitUsers = List.empty();
    _gitUsers = gitUserList;
    update();
  }

  void tempFunc() async {
    try {
      final result = await GitUserApiRepository().getGitUsers("ppark");
      final parsed = json.decode(result.body);
      //print("gitUserse1 :: $parsed");
      //print("gitUserse1 :: ${parsed.runtimeType}");
      // Map<String, dynamic> temp = json.decode(result.body);
      // var temp1 = parsed.cast<GitUser>();

      GitUsers temp2 = GitUsers.fromJson(parsed);
      //print("tttt :: $temp2");
      //print("tttt :: ${temp2.items}");
      List<GitUser> temp3 = temp2.items;
      for (var gg in temp3) {
        print("gitUser :: ${gg.id}");
      }

      // print("tttt :: ${temp3}");
      //print("tttt :: ${temp2}");
    } catch (e) {
      print("error :: $e");
    }

    //final List<GitUser> thisWorks = (parsed["items"] as List).cast<Map<String, dynamic>>().map(GitUser.fromJson).toList();
    //log("gitUserse1 :: ${thisWorks}");

    //var gitUsers = GitUsers.fromJson(parsed);
    // log("gitUserse1 :: ${gitUsers}");

    // log("gitUserse1 :: ${parsed[1]['url']}");
    // log("gitUserse1 :: ${parsed[1]}");
    // GitUser _gitUser1 = GitUser.fromJson(parsed[1]);
    // List<GitUser> _gitUsers1 = List.empty();
    // _gitUsers1 = parsed;
  }
}
