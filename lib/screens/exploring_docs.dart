import 'package:flutter/material.dart';

class ExploreDocs extends StatefulWidget {
  ExploreDocs({Key? key}) : super(key: key);

  @override
  State<ExploreDocs> createState() => _ExploreDocsState();
}

class _ExploreDocsState extends State<ExploreDocs> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(child: Text("Explore Docs")),
    );
  }
}
