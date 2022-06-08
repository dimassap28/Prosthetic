import 'package:flutter/material.dart';
import 'package:prosthesis/dashboard.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const localProviders(
      // home: localproviders(),
      ));
}

class localProviders extends StatelessWidget {
  const localProviders({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: ThemeData(fontFamily: 'Nunito'),
        home: const Scaffold(
          body: LocalProviders(),
        ),
      );
    });
  }
}

List<Map<String, String>> doctor = [
  {
    'image': 'assets/icon/providers/local/p11.png',
    'name': 'Dr. Suparjo',
    'subtitle': 'subtitle',
    'special': 'Top Speciality Extrimity',
    'loc': 'Mojoroto (1.2 km)',
    'icon': 'assets/icon/providers/right1.svg',
  },
  {
    'image': 'assets/icon/providers/local/p12.png',
    'name': 'Dr. Ammar',
    'subtitle': 'subtitle',
    'special': 'Bottom Speciality Extrimity',
    'loc': 'Gambiran (3.2 km)',
    'icon': 'assets/icon/providers/right1.svg',
  },
  {
    'image': 'assets/icon/providers/local/p13.png',
    'name': 'Dr. Nathalia',
    'subtitle': 'subtitle',
    'special': 'Top & Bottom Extrimity',
    'loc': 'Kilisuci (4.2 km)',
    'icon': 'assets/icon/providers/right1.svg',
  },
  {
    'image': 'assets/icon/providers/local/p14.png',
    'name': 'Dr. Joya',
    'subtitle': 'subtitle',
    'special': 'Bottom Speciality Extrimity',
    'loc': 'Bhayangkara (5.2 km)',
    'icon': 'assets/icon/providers/right1.svg',
  }
];

class LocalProviders extends StatefulWidget {
  const LocalProviders({Key? key}) : super(key: key);

  @override
  State<LocalProviders> createState() => _LocalProvidersState();
}

class _LocalProvidersState extends State<LocalProviders> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ),
                  );
                },
                child: SizedBox(
                  width: 3.5.h,
                  height: 3.5.h,
                  child: SvgPicture.asset(
                    'assets/icon/providers/left.svg',
                  ),
                ),
              ),
              const Spacer(),
              Text(
                'Local Providers',
                style: TextStyle(
                  color: const Color(0xff363C3C),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 3.5.h,
                height: 3.5.h,
                child: SvgPicture.asset(
                  'assets/icon/providers/filter.svg',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: 41.h,
          height: 20.h,
          decoration: BoxDecoration(
            color: const Color(0xffd9d9d9),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Local service provider',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            width: 42.h,
                            height: 12.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffD9D9D9).withOpacity(0.2),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 12.h,
                                  height: 12.h,
                                  child: Image(
                                    image: AssetImage(
                                      '${doctor[index]['image']}',
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Spacer(),
                                    Text(
                                      '${doctor[index]['name']}',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      '${doctor[index]['subtitle']}',
                                      style: TextStyle(fontSize: 9.sp),
                                    ),
                                    Text(
                                      '${doctor[index]['special']}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 9.sp,
                                      ),
                                    ),
                                    Text(
                                      '${doctor[index]['loc']}',
                                      style: TextStyle(fontSize: 9.sp),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 15.sp),
                                  child: Container(
                                    width: 40,
                                    height: 40,
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
