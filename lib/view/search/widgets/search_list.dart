import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_git_users/model/git_user.dart';
import 'package:search_git_users/view/search/search_view_models.dart';
import 'package:tuple/tuple.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  late SearchViewModel viewModel = Provider.of<SearchViewModel>(context, listen: false);
  final _bigFont = const TextStyle(fontSize: 20);
  final _smallFont = const TextStyle(fontSize: 12);

  Widget _buildRow(GitUser gitUser) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: Image.network(gitUser.image),
            ),
          ),
          Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gitUser.id,
                      style: _bigFont,
                    ),
                    Text(
                      gitUser.url,
                      style: _smallFont,
                    ),
                  ],
                ),
              )),
        ],
      ),
      trailing: Icon(
        gitUser.isLike ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        semanticLabel: 'Save',
      ),
      onTap: () {
        setState(() {
          viewModel.addUserToDb();
          //gitUsersLiked
        });
      },
    );
  }

  Widget _buildSuggestions(BuildContext context) {
    return Selector<SearchViewModel, List<GitUser>>(
      selector: (buildContext, model) => (model.gitUsers),
      builder: (context, items, child) => ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, i) {
          return _buildRow(items[i]);
        },
      ),
    );
  }
  // // Tuple을 사용해서 viewModel의 2개이상의 변수들을 감지할 때..
  // Widget _buildSuggestions(BuildContext context) {
  //   return Selector<SearchViewModel, Tuple2<List<GitUser>, List<GitUser>>>(
  //     selector: (buildContext, model) => Tuple2(model.gitUsers, model.gitUsersLiked),
  //     builder: (context, items, child) => ListView.builder(
  //       padding: const EdgeInsets.all(16),
  //       itemCount: items.item1.length,
  //       itemBuilder: (context, i) {
  //         return _buildRow(items.item1[i]);
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSuggestions(context),
    );
  }
}
