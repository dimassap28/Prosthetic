import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:prosthesis/readarticle.dart';
import 'package:prosthesis/readarticle2.dart';
import 'package:prosthesis/theme.dart';

import 'dashboard.dart';

void main() {
  runApp(
    const Article(),
  );
}

final now = DateTime.now();
String formatter = DateFormat.yMMMMd().format(now);

List<Map<String, String>> artikel = [
  {
    'image': 'assets/icon/artikel/p1.jpg',
    'judul':
        'Apa itu Prosthesis: Gambaran Umum, Manfaat, dan Hasil yang Diharapkan',
    'subtitle': 'Prosthesis',
    'tgl': formatter,
  },
  {
    'image': 'assets/icon/artikel/p1.jpg',
    'judul': 'Wajarkah Otot Mengecil Setelah Memakai Kaki Palsu (PROSTESIS)?',
    'subtitle': 'Prosthesis',
    'tgl': formatter
  },
];

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  Widget menus({
    required String image,
    required String judul,
    required String subtitle,
    required String tgl,
    required Widget widget,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(8)),
      child: Container(
        decoration: BoxDecoration(
            // color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(23)),
        height: getHeight(100),
        width: double.infinity,
        child: InkWell(
          onTap: () {
            Get.to(() => Builder(builder: (context) => widget));
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  image,
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
                      judul,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style:
                          TextStyle(fontWeight: bold, fontSize: getWidth(16)),
                    ),
                    Text(
                      subtitle,
                      style:
                          TextStyle(fontWeight: normal, fontSize: getWidth(13)),
                    ),
                    SizedBox(
                      height: getHeight(8),
                    ),
                    Text(tgl)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),
              SizedBox(
                height: getHeight(25),
              ),
              Column(
                children: [
                  menus(
                      image: 'assets/icon/artikel/p1.jpg',
                      judul:
                          'Apa itu Prosthesis: Gambaran Umum, Manfaat, dan Hasil yang Diharapkan',
                      subtitle: 'Prosthesis',
                      tgl: formatter,
                      widget: const ReadArticle()),
                  menus(
                      image: 'assets/icon/artikel/p2.jpg',
                      judul:
                          'Wajarkah Otot Mengecil Setelah Memakai Kaki Palsu (PROSTESIS)?',
                      subtitle: 'Prosthesis',
                      tgl: formatter,
                      widget: const ReadArticle2())
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
