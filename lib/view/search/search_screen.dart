import 'package:flutter/material.dart';
import 'package:search_git_users/view/search/search_view_models.dart';
import 'widgets/search_input.dart';
import 'widgets/search_list.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  boxWidget() {
    return Container(
      decoration: BoxDecoration(color: Colors.blue[400], border: Border.all(color: Colors.indigo, width: 0.5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SearchViewModel>(
        create: (_) => SearchViewModel(),
        child: Column(
          children: const <Widget>[
            Expanded(
              flex: 1,
              child: SearchingWidget(),
            ),
            Expanded(
              flex: 8,
              child: SearchList(),
            ),
          ],
        ));
  }
}
