import 'package:flutter/material.dart';
import 'package:prosthesis/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

String name = 'Doel';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  Widget menus({
    required String image,
    required String menuTitle,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              width: 1,
              color: graycolor,
            ),
          ),
          child: SvgPicture.asset(
            image,
            color: bluecolor,
          ),
        ),
        Text(
          menuTitle,
          style: blacktTextStyle.copyWith(fontSize: 12, fontWeight: normal),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        // bottom: true,
        child: Container(
          // color: Colors.blue,
          padding: const EdgeInsets.all(24),
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
                            "Hello, $name!",
                            style: blacktTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Sunday, 28 Juni 2022",
                        style: blacktTextStyle.copyWith(fontSize: 20),
                      )
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/icon/dashboard/profile.png",
                    height: 60,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/icon/dashboard/slider.png",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 64,
                child: TextField(
                  maxLines: 1,
                  style: blacktTextStyle.copyWith(fontSize: 16),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: SvgPicture.asset(
                        "assets/icon/dashboard/Search.svg",
                        color: blackcolor,
                        width: 5,
                        height: 5,
                        fit: BoxFit.scaleDown,
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
                      hintText: 'Search anything here',
                      hintStyle: blacktTextStyle.copyWith(
                          color: const Color.fromRGBO(54, 60, 60, 0.5))),
                ),
              ),
              Text(
                "Menus",
                style: blacktTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              Row(
                children: [
                  menus(
                    image: "assets/icon/dashboard/Paper.svg",
                    menuTitle: "Prosthesis Information",
                  ),
                  const Spacer(),
                  menus(
                    image: "assets/icon/dashboard/Call.svg",
                    menuTitle: "Local Providers",
                  ),
                  const Spacer(),
                  menus(
                    image: "assets/icon/dashboard/Call.svg",
                    menuTitle: "International Providers",
                  ),
                  const Spacer(),
                  menus(
                      image: "assets/icon/dashboard/Heart.svg",
                      menuTitle: "Prosthesis Rehabilitation")
                ],
              ),
              Row(
                children: [
                  Text(
                    "Articles",
                    style: blacktTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: bluetTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/icon/dashboard/thumbnail1.png",
                            width: 200,
                            height: 176,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Text(
                          "Kaki Palsu Prostetik",
                          style: blacktTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          "lorem ipsum dolor sit",
                          style: blacktTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: normal,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/icon/dashboard/thumbnail.png",
                            width: 200,
                            height: 176,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Text(
                          "Manfaat Kaki Palsu",
                          style: blacktTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          "lorem ipsum dolor sit",
                          style: blacktTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
