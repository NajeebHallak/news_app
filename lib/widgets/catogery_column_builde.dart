import 'package:dio/dio.dart';
import 'package:five_tharwat_samy/widgets/catogery_column.dart';

import 'package:flutter/material.dart';

import '../models/model_column.dart';

import '../serveces/servesec.dart';

class CatogeryColumnBuilde extends StatefulWidget {
  const CatogeryColumnBuilde({super.key, required this.whatSow});
  final String whatSow;

  @override
  State<CatogeryColumnBuilde> createState() => _CatogeryColumnBuildeState();
}

class _CatogeryColumnBuildeState extends State<CatogeryColumnBuilde> {
  var itemColumn;
  // bool isLoade = true;

  @override
  void initState() {
    super.initState();
    itemColumn = Serveces(Dio()).getNews(whatSow: widget.whatSow);
  }

  // // ignore: non_constant_identifier_names
  // Future<void> GeneralColumn() async {
  //   itemColumn = await serveces(Dio()).getNews();
  //   setState(() {
  //     isLoade = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ModelColumn>>(
        future: itemColumn,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CatogeryColumn(itemsColumn: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'ooops the ERROR.......',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 150),
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
    // return isLoade
    //     ? const SliverToBoxAdapter(
    //         child: Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : CatogeryColumn(itemsColumn: itemColumn);
  }
}
