import 'package:five_tharwat_samy/widgets/row_news.dart';
import 'package:flutter/material.dart';

import '../models/model_row_news.dart';

class CatogeryRow extends StatelessWidget {
  const CatogeryRow({
    super.key,
    required this.listRow,
  });

  final List<ModelRow> listRow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: listRow.length,
        itemBuilder: (context, index) => RowNews(listRow: listRow[index]),
      ),
    );
  }
}
