import 'package:dio/dio.dart';
import 'package:five_tharwat_samy/models/model_row_news.dart';

import '../models/model_column.dart';

class Serveces {
  final Dio dio;

  Serveces(
    this.dio,
  );
  Future<List<ModelColumn>> getNews({required String whatSow}) async {
    // ignore: unused_local_variable
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=${whatSow}&apiKey=c374e15f34ba4674a6fd7fc30767231a&https://newsapi.org/v2/everything?q=sport&apiKey=c374e15f34ba4674a6fd7fc30767231a');
      Map<String, dynamic> theData = response.data;
      List<dynamic> listData = theData["articles"];
      List<ModelColumn> listColumn = [];
      for (var element in listData) {
        ModelColumn use = ModelColumn.fromjson(element);
        listColumn.add(use);
      }

      return listColumn;
    } catch (Error) {
      return [];
    }
  }
}

//   Future<List<ModelColumn>> getNews() async {
//     Response response = await dio.get(
//         'https://newsapi.org/v2/top-headlines?country=us&apiKey=c374e15f34ba4674a6fd7fc30767231a');
//     Map<String, dynamic> data = response.data;
//     List<dynamic> listData = data["articles"];

//     List<ModelColumn> listColumn = [
//       // ModelColumn12(
//       //     image: listData[0]["urlToImage"],
//       //     text1: listData[0]["title"],
//       //     text2: listData[0]["author"],
//       //     text3: listData[0]["description"])
//     ];

//     for (var element in listData) {
//       ModelColumn item = ModelColumn(
//         image: element["urlToImage"],
//         text1: element["title"],
//         text2: element["author"],
//         text3: element["description"],
//       );
//       listColumn.add(item);
//     }
//     return listColumn;

//     // for (var element in listColumn) {
//     //   print(element);
//     //   print('...............................');
//     // }
//   }
// }
