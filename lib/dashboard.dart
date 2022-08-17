import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prosthesis/article.dart';
import 'package:prosthesis/ceritakupage.dart';
import 'package:prosthesis/login.dart';
import 'package:prosthesis/note.dart';
import 'package:prosthesis/prosthesis_info.dart';
import 'package:prosthesis/providers.dart';
import 'package:prosthesis/readarticle.dart';
import 'package:prosthesis/rehabilitation.dart';
import 'package:prosthesis/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    const Dashboard(),
  );
}

// List<Map<String, String>> _article = [
//   {
//     'image': 'assets/icon/artikel/p1.jpg',
//     'title': 'Edukasi: Apa Itu Prostesis',
//     'subtitle': 'Prostesis',
//   },
//   {
//     'image': 'assets/icon/artikel/p1.jpg',
//     'title': 'Wajarkah Otot Mengecil Setelah Memakai Kaki Palsu (PROSTESIS)?',
//     'subtitle': 'Prostesis',
//   },
// ];

final now = DateTime.now();
String formatter = DateFormat.yMMMMd().format(now);

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String name = 'Tia';

  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> slider = [
    SizedBox(
      height: getHeight(200),
      child: Image.asset(
        "assets/icon/dashboard/slider1.jpg",
      ),
    ),
    SizedBox(
      height: getHeight(200),
      child: Image.asset(
        "assets/icon/dashboard/slider2.jpg",
      ),
    ),
    SizedBox(
      height: getHeight(200),
      child: Image.asset(
        "assets/icon/dashboard/slider3.jpg",
      ),
    ),
  ];

  DateTime now = DateTime.now();

  String printDate = DateFormat("EEEE, dd MMMM yyyy").format(
    DateTime.now(),
  );

  Widget menus({
    required String image,
    required String menuTitle,
    required Widget widget,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.to(() => Builder(builder: (context) => widget));
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(20),
            width: getWidth(70),
            height: getHeight(70),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                width: getWidth(1),
                color: graycolor,
              ),
            ),
            child: SvgPicture.asset(
              image,
              color: orangecolor,
            ),
          ),
        ),
        Text(
          menuTitle,
          style: blacktTextStyle.copyWith(
              fontSize: getWidth(12), fontWeight: normal),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whitecolor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: getHeight(8)),
            padding: EdgeInsets.all(getHeight(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hello, ",
                              style: blacktTextStyle.copyWith(
                                fontSize: getWidth(24),
                                fontWeight: medium,
                              ),
                            ),
                            Text(
                              "$name!",
                              style: blacktTextStyle.copyWith(
                                fontSize: getWidth(24),
                                fontWeight: bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          printDate,
                          style:
                              blacktTextStyle.copyWith(fontSize: getWidth(16)),
                        )
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(() => const Login());
                      },
                      child: Image.asset(
                        "assets/icon/dashboard/profile1.png",
                        height: getHeight(40),
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CarouselSlider(
                    items: slider,
                    carouselController: _controller,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      height: getHeight(187),
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            _current = index;
                          },
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: slider.asMap().entries.map(
                    (entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: getWidth(8),
                          height: getHeight(8),
                          margin: EdgeInsets.symmetric(
                              vertical: getHeight(8), horizontal: getWidth(4)),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8),
                            color: (Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? whitecolor
                                    : orangecolor)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
                SizedBox(
                  height: getHeight(13),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(5)),
                  height: getHeight(52),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F0F0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: TextField(
                      maxLines: 1,
                      style: blacktTextStyle.copyWith(fontSize: getWidth(16)),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        filled: false,
                        prefixIcon: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: getHeight(14)),
                          child: SvgPicture.asset(
                            "assets/icon/dashboard/Search.svg",
                            color: const Color.fromRGBO(54, 60, 60, 0.5),
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        fillColor:
                            Theme.of(context).inputDecorationTheme.fillColor,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'Cari',
                        hintStyle: blacktTextStyle.copyWith(
                          color: const Color.fromRGBO(54, 60, 60, 0.5),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Text(
                  "Menu",
                  style: blacktTextStyle.copyWith(
                    fontSize: getWidth(20),
                    fontWeight: bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: getHeight(5)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      menus(
                        image: "assets/icon/dashboard/Paper.svg",
                        menuTitle: "Prosthesis\nInformasi",
                        widget: const ProsthesisInfo(),
                      ),
                      const Spacer(),
                      menus(
                        image: "assets/icon/dashboard/Calling.svg",
                        menuTitle: "Penyedia",
                        widget: const Providers(),
                      ),
                      const Spacer(),
                      menus(
                        image: "assets/icon/dashboard/Heart.svg",
                        menuTitle: "Prosthesis\nRehabilitasi",
                        widget: const Rehabilitation(),
                      ),
                      const Spacer(),
                      menus(
                        image: "assets/icon/dashboard/Edit.svg",
                        menuTitle: "Ceritaku",
                        widget: const CeritakuPage(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Row(
                  children: [
                    Text(
                      "Artikel",
                      style: blacktTextStyle.copyWith(
                        fontSize: getWidth(20),
                        fontWeight: bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(() => const Article());
                      },
                      child: Text(
                        "Lebih banyak",
                        style: orangetTextStyle.copyWith(
                          fontSize: getWidth(14),
                          fontWeight: bold,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getHeight(205),
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, index) =>
                        VerticalDivider(
                      width: getWidth(30),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.zero,
                    itemCount: _article.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ReadArticle(),
                                    settings: RouteSettings(
                                        arguments: _article[index]),
                                  ),
                                );
                              },
                              child: SizedBox(
                                width: getWidth(200),
                                height: getHeight(180),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          _article[index].image,
                                          width: getWidth(200),
                                          height: getHeight(130),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: getHeight(5),
                                    ),
                                    Text(
                                      _article[index].title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: blacktTextStyle.copyWith(
                                        fontSize: getWidth(18),
                                        fontWeight: bold,
                                      ),
                                    ),
                                    Text(
                                      _article[index].subtitle,
                                      style: TextStyle(
                                        fontWeight: light,
                                        fontSize: getWidth(15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
