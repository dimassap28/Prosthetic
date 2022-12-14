import 'package:flutter/material.dart';
import 'package:prosthesis/theme.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const InterProviders(
      // home: InterProviders(),
      ));
}

class InterProviders extends StatelessWidget {
  const InterProviders({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Nunito'),
        home: const Scaffold(
          body: InterProvider(),
        ),
      );
    });
  }
}

List<Map<String, String>> doctor = [];

class InterProvider extends StatefulWidget {
  const InterProvider({Key? key}) : super(key: key);

  @override
  State<InterProvider> createState() => _InterProviderState();
}

class _InterProviderState extends State<InterProvider> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getHeight(20)),
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
                        Container(
                          padding: EdgeInsets.only(bottom: getHeight(20)),
                          child: Container(
                            width: getWidth(360),
                            height: getHeight(110),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffD9D9D9).withOpacity(0.2),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(110),
                                  height: getHeight(110),
                                  child: Image(
                                    image: AssetImage(
                                      '${doctor[index]['image']}',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: getWidth(15),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Spacer(),
                                    Text(
                                      '${doctor[index]['name']}',
                                      style: TextStyle(
                                        fontSize: getWidth(23),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: getHeight(2),
                                    ),
                                    Text(
                                      '${doctor[index]['subtitle']}',
                                      style: TextStyle(fontSize: getWidth(12)),
                                    ),
                                    SizedBox(
                                      height: getHeight(2),
                                    ),
                                    Text(
                                      '${doctor[index]['special']}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: getWidth(12),
                                      ),
                                    ),
                                    SizedBox(
                                      height: getHeight(2),
                                    ),
                                    Text(
                                      '${doctor[index]['loc']}',
                                      style: TextStyle(fontSize: getWidth(12)),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: getWidth(20)),
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
