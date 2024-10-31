import 'package:five_tharwat_samy/views/news_page.dart';
import 'package:flutter/material.dart';

import '../models/model_row_news.dart';

class RowNews extends StatelessWidget {
  const RowNews({super.key, required this.listRow});

  final ModelRow listRow;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsPage(
                whatShow: listRow.name,
              ),
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 25, right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(
                  listRow.image,
                ),
                fit: BoxFit.cover)),
        height: 135,
        width: 200,
        child: Center(
            child: Text(
          listRow.name,
          style: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
