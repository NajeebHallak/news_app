import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/model_column.dart';
import '../views/web_view_page.dart';

class ColumnNews extends StatelessWidget {
  ColumnNews({super.key, required this.modelColumn});
  final ModelColumn modelColumn;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebVewPage(url: modelColumn.url!),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),

              child: modelColumn.image != null
                  ? CachedNetworkImage(
                      errorWidget: (context, url, error) =>
                          const Center(child: Icon(Icons.error)),
                      imageUrl: modelColumn.image!,
                      height: 286,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      placeholder: (
                        context,
                        url,
                      ) =>
                          Container(
                        color: Colors.grey,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      // imageBuilder: (context, imageProvider) => Container(
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: imageProvider,
                      //         fit: BoxFit.cover,
                      //         colorFilter: const ColorFilter.mode(
                      //             Colors.red, BlendMode.colorBurn)),
                      //   ),
                      // ),
                    )
                  : const Image(
                      image: AssetImage('assets/science.avif'),
                      fit: BoxFit.cover,
                    ),

              // modelColumn.image != null
              //     ? /
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            modelColumn.text1 ?? 'the one Text is null',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 25, color: Colors.black),
          ),
          Text(
            modelColumn.text2 ?? 'the tow Text is null',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 15, color: Colors.black),
          ),
          Text(
            modelColumn.text3 ?? 'the three Text is null',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 10, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
