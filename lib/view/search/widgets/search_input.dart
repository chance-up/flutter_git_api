import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:search_git_users/view/search/search_view_models.dart';
import 'package:provider/provider.dart';

class SearchingWidget extends StatelessWidget {
  const SearchingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late SearchViewModel viewModel = Provider.of<SearchViewModel>(context);

    final myController = TextEditingController();

    void printMSG() {
      log("kkkk :: ${viewModel.searchText}");
      viewModel.searchText = myController.text;
      log("kkkk :: ${viewModel.searchText}");
      viewModel.update();
      viewModel.searchUsers();
    }

    return Row(children: <Widget>[
      Expanded(
        flex: 8,
        child: TextField(
            controller: myController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              //labelText: ,
              label: Text(viewModel.searchText),
            )),
      ),
      Expanded(
          flex: 1,
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
