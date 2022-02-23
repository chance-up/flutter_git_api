import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:search_git_users/view/search/search_view_models.dart';
import 'package:provider/provider.dart';

class SearchingWidget extends StatelessWidget {
  const SearchingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late SearchViewModel viewModel = Provider.of<SearchViewModel>(context, listen: false);

    final myController = TextEditingController();

    void printMSG() {
      // viewModel.searchText = myController.text;
      // viewModel.update();
      // var stream = Stream.periodic(Duration(seconds: 1), (x) => x).take(10); // 1. 스트림 만들기 - 1초마다 데이터를 1개씩 만듬, 10개 까지만.
      // stream.listen(print); // 2. 이벤트 처리
      viewModel.searchText = myController.text;
      viewModel.searchUsers();
    }

    return Row(children: <Widget>[
      Expanded(
        flex: 7,
        child: TextField(
            controller: myController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              //labelText: ,
              label: Text(viewModel.searchText),
            )),
      ),
      Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: printMSG,
              child: const Text("search"),
            ),
          )),
    ]);
  }
}
