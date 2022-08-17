import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:prosthesis/article.dart';
import 'package:prosthesis/note.dart';
import 'package:prosthesis/theme.dart';

void main() {
  runApp(
    const ReadArticle(),
  );
}

final now = DateTime.now();
String formatter = DateFormat.yMMMMd().format(now);

class ReadArticle extends StatelessWidget {
  const ReadArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final note = ModalRoute.of(context)!.settings.arguments as Note;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getHeight(24), vertical: getWidth(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const Article());
                    },
                    child: SizedBox(
                      child: SvgPicture.asset(
                        'assets/icon/providers/left.svg',
                        width: getWidth(25),
                        height: getHeight(25),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: getHeight(25),
                ),
                Text(note.title,
                    style: TextStyle(
                      fontWeight: bold,
                      fontSize: getWidth(18),
                    )),
                SizedBox(
                  height: getHeight(10),
                ),
                Text(
                  formatter,
                  style: TextStyle(fontWeight: light),
                ),
                SizedBox(
                  height: getHeight(10),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    note.image,
                    height: getHeight(200),
                    width: getWidth(350),
                  ),
                ),
                SizedBox(
                  height: getHeight(10),
                ),
                Center(
                  child: Text(
                    note.creditimage,
                    style: TextStyle(fontWeight: light),
                  ),
                ),
                SizedBox(
                  height: getHeight(10),
                ),
                Text(
                  note.heading1,
                  style: TextStyle(fontSize: getWidth(16), fontWeight: bold),
                ),
                Text(
                  note.content1,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  note.heading2,
                  style: TextStyle(fontSize: getWidth(16), fontWeight: bold),
                ),
                Text(
                  note.content2,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  note.creditartikel,
                  style: TextStyle(fontWeight: light),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
