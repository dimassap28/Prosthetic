import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:prosthesis/readarticle.dart';
import 'package:prosthesis/theme.dart';

import 'dashboard.dart';

void main() {
  runApp(
    const Article(),
  );
}

final now = DateTime.now();
String formatter = DateFormat.yMMMMd().format(now);

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: getHeight(24),
          ),
          child: Column(
            children: [
              SizedBox(
                height: getHeight(20),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const Dashboard());
                  },
                  child: SizedBox(
                    child: SvgPicture.asset(
                      'assets/icon/providers/left.svg',
                      width: getWidth(25),
                      height: getHeight(25),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'Artikel',
                  style: TextStyle(
                    color: const Color(0xff363C3C),
                    fontSize: getWidth(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer()
              ]),
              SizedBox(
                height: getHeight(25),
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(23)),
                height: getHeight(100),
                width: double.infinity,
                child: InkWell(
                  onTap: () {
                    Get.to(() => const ReadArticle());
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/icon/artikel/p1.jpg',
                          width: getWidth(135),
                          height: getHeight(100),
                        ),
                      ),
                      SizedBox(
                        width: getWidth(15),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Apa itu Prosthesis: Gambaran Umum, Manfaat, dan Hasil yang Diharapkan',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                  fontWeight: bold, fontSize: getWidth(16)),
                            ),
                            Text(
                              'Prosthesis?',
                              style: TextStyle(
                                  fontWeight: normal, fontSize: getWidth(13)),
                            ),
                            SizedBox(
                              height: getHeight(8),
                            ),
                            Text(formatter)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
