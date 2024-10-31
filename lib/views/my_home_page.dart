import 'package:flutter/material.dart';
import '../models/model_row_news.dart';
import '../widgets/catogery_Row.dart';
import '../widgets/catogery_column_builde.dart';

class MyHomePage extends StatelessWidget {
  final List<ModelRow> listRow = [
    ModelRow(image: 'assets/entertaiment.avif', name: 'entertaiment'),
    ModelRow(image: 'assets/image.jpg', name: 'sport'),
    ModelRow(image: 'assets/newss.webp', name: 'math'),
    ModelRow(image: 'assets/news1.jpg', name: 'business'),
    ModelRow(image: 'assets/science.avif', name: 'science'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Text(
                'Cluod',
                style: TextStyle(fontSize: 25, color: Colors.orange),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CatogeryRow(listRow: listRow),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const CatogeryColumnBuilde(whatSow: 'math'),
            ],
          ),
        ),
      ),
    );
  }
}
