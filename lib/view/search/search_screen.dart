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
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(children: <Widget>[
              Expanded(
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
                      child: Text("Search"),
                    ),
                  )),
            ]),
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
