import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:prosthesis/theme.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const LocalDetail(
      // home: localproviders(),
      ));
}

class LocalDetail extends StatelessWidget {
  const LocalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Container(
        padding: EdgeInsets.all(getHeight(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  'Prostesis Jari 2 Ruas by iDIG',
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
            Center(
              child: SizedBox(
                child: Image.asset(
                  'assets/icon/providers/local/fingerrow.png',
                  width: getWidth(200),
                  height: getHeight(200),
                ),
              ),
            ),
            Text(
              'Specification:',
              style: TextStyle(
                fontSize: getWidth(18),
                fontWeight: bold,
              ),
            ),
            const Text('General Dimension (LxWxH): 89 x 31 x 29 mm\n'
                'Universal finger size (Asian Anthropometry) for index, middle, and ring finger\n'
                'Material : Solid Standard UV DLP resin\n'
                'For 2 row finger amputee'),
            Center(
              child: SizedBox(
                child: Image.asset(
                  'assets/icon/providers/local/fingerrow1.png',
                  width: getWidth(350),
                  height: getHeight(350),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(10),
            ),
            DataTable(
              columnSpacing: 35,
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Nomor Item',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Nama Bagian',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Jumlah',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Center(child: Text('1'))),
                    DataCell(Text('Middle Lower Part')),
                    DataCell(Center(child: Text('1'))),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Center(child: Text('2'))),
                    DataCell(Text('Finger Tip')),
                    DataCell(Center(child: Text('1'))),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Center(child: Text('3'))),
                    DataCell(Text('Middle Upper Part')),
                    DataCell(Center(child: Text('1'))),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Center(child: Text('4'))),
                    DataCell(Text('Socket')),
                    DataCell(Center(child: Text('1'))),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: getHeight(20),
            ), //
            InkWell(
              onTap: () => launchUrlString(
                "whatsapp://send?phone=+628123203422&Text=iDIG",
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: orangecolor,
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: getHeight(50),
                child: Center(
                  child: Text(
                    'Hubungi',
                    style: TextStyle(fontWeight: bold, color: whitecolor),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    ));
  }
}
