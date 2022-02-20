import 'package:flutter/material.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  List strs = ["1", "2", "3", "4", "5"];

  Widget _buildRow(String str) {
    return ListTile(
      title: Text(str),
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
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        if (i == (strs.length) - 1) {
          return const Divider();
        }
        return _buildRow(strs[i]);
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