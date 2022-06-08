import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const Prosthesis(
      // home: localproviders(),
      ));
}

class Prosthesis extends StatelessWidget {
  const Prosthesis({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nunito'),
      home: const Scaffold(
        body: localProviders(),
      ),
    );
  }
}

List<Map<String, String>> doctor = [
  {
    'image': 'assets/icon/providers/local/p11.png',
    'name': 'Dr. Suparjo',
    'subtitle': 'subtitle',
    'special': 'Top Speciality Extrimity',
    'loc': 'Mojoroto (1.2 km)',
    'icon': 'assets/images/right1.svg',
  },
  {
    'image': 'assets/icon/providers/local/p12.png',
    'name': 'Dr. Ammar',
    'subtitle': 'subtitle',
    'special': 'Bottom Speciality Extrimity',
    'loc': 'Gambiran (3.2 km)',
    'icon': 'assets/images/right1.svg',
  },
  {
    'image': 'assets/icon/providers/local/p13.png',
    'name': 'Dr. Nathalia',
    'subtitle': 'subtitle',
    'special': 'Top & Bottom Extrimity',
    'loc': 'Kilisuci (4.2 km)',
    'icon': 'assets/images/right1.svg',
  },
  {
    'image': 'assets/icon/providers/local/p14.png',
    'name': 'Dr. Joya',
    'subtitle': 'subtitle',
    'special': 'Bottom Speciality Extrimity',
    'loc': 'Bhayangkara (5.2 km)',
    'icon': 'assets/images/right1.svg',
  }
];

class localProviders extends StatefulWidget {
  const localProviders({Key? key}) : super(key: key);
  @override
  State<localProviders> createState() => _localProvidersState();
}

class _localProvidersState extends State<localProviders> {
  final padding = const EdgeInsets.symmetric(horizontal: 30);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  'assets/images/left.svg',
                ),
              ),
              const Spacer(),
              const Text(
                'Local Providers',
                style: TextStyle(
                  color: Color(0xff363C3C),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  'assets/images/filter.svg',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: padding,
          width: 330,
          height: 180,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Local service provider',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
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
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 100,
                                height: 100,
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
                                  Text(
                                    '${doctor[index]['name']}',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '${doctor[index]['subtitle']}',
                                  ),
                                  Text(
                                    '${doctor[index]['special']}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '${doctor[index]['loc']}',
                                  ),
                                ],
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 25,
                                height: 25,
                                child: SvgPicture.asset(
                                  '${doctor[index]['icon']}',
                                ),
                              )
                            ],
                          ),
                        )
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
