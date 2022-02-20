import 'package:flutter/material.dart';
import 'widgets/search_input.dart';
import 'widgets/search_list.dart';

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
    return Column(
      children: <Widget>[
        const Expanded(
          flex: 1,
          child: SearchingWidget(),
        ),
        Expanded(
          flex: 8,
          child: SearchList(),
        ),
      ],
    );
  }
}
