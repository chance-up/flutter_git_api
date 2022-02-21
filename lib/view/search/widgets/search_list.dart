import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_git_users/model/git_user.dart';
import 'dart:developer';

import 'package:search_git_users/view/search/search_view_models.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  late SearchViewModel viewModel = Provider.of<SearchViewModel>(context);

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
      trailing: const Icon(
        Icons.favorite,
        color: Colors.red,
        semanticLabel: 'Save',
      ),
      onTap: () {
        setState(() {});
      },
    );
  }

  Widget _buildSuggestions() {
    final items = viewModel.gitUsers;
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, i) {
        return _buildRow(items[i]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSuggestions(),
    );
  }
}
