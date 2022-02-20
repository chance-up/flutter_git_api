import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer';

class SearchViewModel extends ChangeNotifier {
  final List<int> _gitUser = List.of(List.empty());

  List<int> get gitUser => _gitUser;
  var _members = <dynamic>[];

  // Future는 비동기 반환형.
  // 또한 async / await로 비동기 통신
  // 호출 완료되면 setState수행된다.
  Future<void> _loadData() async {
    const dataUrl = 'https://api.github.com/search/users';
    final response = await http.get(Uri.parse(dataUrl));
    _members = json.decode(response.body) as List;
    for (var element in _members) {
      log("data :: $element");
    }
  }

  notifyListeners(); // 숫자가 증가했다는 것을 ChangeNotifierProvider에 알려주기 위해 notifyListeners()를 호출한다.
}
