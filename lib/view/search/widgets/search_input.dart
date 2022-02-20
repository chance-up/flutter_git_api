import 'package:flutter/material.dart';

class SearchingWidget extends StatelessWidget {
  const SearchingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      const Expanded(
          flex: 8,
          child: TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Hint',
          ))),
      Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Search"),
            ),
          )),
    ]);
  }
}
