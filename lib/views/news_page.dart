import 'package:flutter/material.dart';

import '../widgets/catogery_column_builde.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required this.whatShow});
  final String whatShow;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            whatShow,
            style: const TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: CustomScrollView(slivers: [
            CatogeryColumnBuilde(
              whatSow: whatShow,
            ),
          ]),
        ),
      ),
    );
  }
}
