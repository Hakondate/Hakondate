import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate{

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return <Widget> [
      IconButton(
         icon: const Icon(Icons.clear),
         color: Colors.orange,
         onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        color: Colors.orange,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Text("検索結果");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Text("suggest");
  }
  
}