import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:prosthesis/note.dart';
import 'package:prosthesis/readarticle.dart';
import 'package:prosthesis/theme.dart';

void main() {
  runApp(
    const Article(),
  );
}

final now = DateTime.now();
String formatter = DateFormat.yMMMMd().format(now);

final List<Note> _article = [
  Note(
      title: 'Edukasi: Apa Itu Prostesis',
      tgl: formatter,
      image: 'assets/icon/artikel/p1.jpg',
      creditimage: 'credit, Westend61 via Getty Images',
      heading1: 'Apa itu Prosthesis?\n',
      heading2: 'Cara Kerja Dan Fungsi Prostesis\n',
      creditartikel: 'Sumber: Hellosehat 2021',
      content1: content1,
      content2: content2,
      subtitle: 'Prosthesis'),
  Note(
      title: 'Wajarkah Otot Mengecil Setelah Memakai Kaki Palsu (PROSTESIS)?',
      tgl: formatter,
      image: 'assets/icon/artikel/p2.jpg',
      creditimage: 'credit, iStock Photo',
      heading1: '',
      heading2: '',
      creditartikel: 'Sumber: Hellosehat 2021',
      content1: artikelcontent,
      content2: '',
      subtitle: 'Prosthesis'),
];

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
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
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: _article.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: getHeight(8)),
                    child: SizedBox(
                      height: getHeight(80),
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReadArticle(),
                              settings:
                                  RouteSettings(arguments: _article[index]),
                            ),
                          );
                          // Get.to(() => Builder(builder: (context) => widget));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              // width: getWidth(135),
                              height: getHeight(120),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  _article[index].image,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: getWidth(15),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _article[index].title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                    style: TextStyle(
                                        fontWeight: bold,
                                        fontSize: getWidth(16)),
                                  ),
                                  Text(
                                    _article[index].subtitle,
                                    style: TextStyle(
                                        fontWeight: normal,
                                        fontSize: getWidth(13)),
                                  ),
                                  SizedBox(
                                    height: getHeight(8),
                                  ),
                                  Text(formatter),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
