import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  boxWidget() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[400],
          border: Border.all(color: Colors.indigo, width: 0.5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.indigo, width: 0.5)),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: boxWidget(),
          ),
          Expanded(
            flex: 8,
            child: boxWidget(),
          ),
        ],
      ),
    );
  }
}
