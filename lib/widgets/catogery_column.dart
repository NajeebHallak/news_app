import 'package:five_tharwat_samy/widgets/column_news.dart';
import 'package:flutter/material.dart';

import '../models/model_column.dart';

// ignore: must_be_immutable
class CatogeryColumn extends StatelessWidget {
  final List<ModelColumn> itemsColumn;

  const CatogeryColumn({super.key, required this.itemsColumn});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: itemsColumn.length,
        (context, index) => ColumnNews(modelColumn: itemsColumn[index]),
      ),
    );
  }
}
