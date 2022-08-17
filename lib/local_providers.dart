import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prosthesis/localdetail.dart';
import 'package:prosthesis/theme.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const LocalProviders(
      // home: localproviders(),
      ));
}

class LocalProviders extends StatelessWidget {
  const LocalProviders({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Nunito'),
        home: const Scaffold(
          body: LocalProvider(),
        ),
      );
    });
  }
}

List<Map<String, String>> doctor = [
  {
    'image': 'assets/icon/providers/local/new1.png',
    'name': '2 Row Finger Prosthetic',
    'subtitle': 'Solid Standard UV DLP resin',
    'special': 'For 2 row finger amputee',
    'icon': 'assets/icon/providers/right1.svg',
  },
];

class LocalProvider extends StatefulWidget {
  const LocalProvider({Key? key}) : super(key: key);

  @override
  State<LocalProvider> createState() => _LocalProviderState();
}

class _LocalProviderState extends State<LocalProvider> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getHeight(20),
        ),
        Expanded(
          child: Column(
            children: [
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: doctor.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => const LocalDetail());
                          },
                          child: Container(
                            padding: EdgeInsets.only(bottom: getHeight(20)),
                            child: Container(
                              width: double.infinity,
                              height: getHeight(110),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffD9D9D9).withOpacity(0.2),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: orangecolor,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(
                                        height: getHeight(110),
                                        width: getWidth(110),
                                        image: AssetImage(
                                            '${doctor[index]['image']}'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: getWidth(15),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${doctor[index]['name']}',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: getWidth(20),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: getHeight(2),
                                        ),
                                        Text(
                                          '${doctor[index]['subtitle']}',
                                          overflow: TextOverflow.ellipsis,
                                          style:
                                              TextStyle(fontSize: getWidth(12)),
                                        ),
                                        SizedBox(
                                          height: getHeight(2),
                                        ),
                                        Text(
                                          '${doctor[index]['special']}',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: getWidth(12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: getWidth(20)),
                                    child: Container(
                                      width: getWidth(40),
                                      height: getHeight(40),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xffDDDDDD),
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8,
                                        ),
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: SvgPicture.asset(
                                          '${doctor[index]['icon']}',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
