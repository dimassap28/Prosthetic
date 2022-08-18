import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:prosthesis/theme.dart';

void main() {
  runApp(
    const Rehabilitasi(),
  );
}

List<Map<String, String>> noRehab = [
  {
    'no': '1.',
    'noHead': '   1.1.',
    'noSubA': '      1.1.1',
    'noSubB': '      1.1.2',
    'noSubC': '      1.1.3',
    'noSubD': '      1.1.4',
  },
  {
    'noHead': '   1.2.',
    'noSubA': '      1.2.1',
    'noSubB': '      1.2.2',
    'noSubC': '      1.2.3',
    'noSubD': '      1.2.4',
    'noSubE': '      1.2.5',
  },
  {
    'no': '2.',
    'noHead': '   2.1.',
  },
  {
    'noHead': '   2.2.',
  },
  {
    'no': '3.',
  }
];

List<Map<String, String>> conRehab = [
  {
    'judul': 'Prosthesis',
    'ekstrem': ' Prosthesis Ekstremitas Atas',
    'content':
        'Fungsi dari ekstremitas atas lebih sulit digantikan dibandingkan ekstremitas bawah. Selain untuk aktivitas motorik, ekstremitas atas juga digunakan untuk keperluan sehari-hari seperti merawat diri, interaksi dengan orang lain, dan ekspresi diri.',
    'ekstrem1': ' Prosthesis Pasif',
    'content1':
        'Prosthesis yang paling umum adalah prosthesis pasif dimana prosthesis ini tidak memiliki gerakan aktif dari sendi. Prosthesis ini merupakan yang paling ringan karena tidak adanya sistem motor dan sistem mekanik yang sedikit. Sering disebut sebagai fungsi kosmetik, prosthesis ini juga mampu melakukan tugas binamual seperti menahan kertas saat menulis, membawa barang, atau menstabilisasi benda saat dipegang.',
    'ekstrem2': ' Body-powered Prosthesis',
    'content2':
        'Prosthesis ini digerakkan oleh badan pasien dengan harness yang mempunyai strap yang dipasangkan di atas sepertiga scapula dan menyambung ke kabel yang mengoperasikan alatnya. Kelebihan terdapat pada beratnya yang ringan dan durabilitas (dapat dibuat waterproof dan dapat menerima umpan balik tarikan). Kekurangannya adalah masih perlunya harness dan pasien harus memiliki kekuatan dan ROM untuk menarik kabel secara benar.',
    'ekstrem3': ' Externally Powered Prosthesis',
    'content3': 'Prosthesis ini mempunyai baterai di sistemnya dan dikontrol melalui berbagai input, termasuk sinyal EMG, force-sensing resistors, tombol untuk menarik dan mendorong (Esquenazi, 2015). Prosthesis yang paling sering ditemukan dari tipe ini adalah prosthesis myoelektrik yang menggunakan sinyal EMG melalui dua kontraksi otot antagonis untuk mengoperasikan gerakan dua arah. '
        '\nKelebihannya adalah tidak perlunya harness dan dapat dioperasikan pada banyak gerakan karena tidak ada kabel atau strap. Selain itu, prosthetic myoelektrik terlihat lebih bagus secara kosmetik.'
        '\nKekurangannya adalah baterai yang membuat prosthesis ini lebih berat, water-resistant tetapi tidak waterproof, perlu dicharge rutin, dan perlu perawatan yang lebih dibandingkan prosthesis lain, dan lebih mahal. Selain itu, lebih gampang rusak (Biddiss and Chau, 2007) dan memerlukan sensor elektroda untuk merekam sinyal dari otot sehingga bisa menimbulkan ketidaknyamanan.',
    'ekstrem4': ' Hybrid Prosthesis',
    'content4':
        'Prosthesis ini menggabungkan komponen tubuh dan komponen myoelektrik menggunakan prosthesis disartikulasi transhumeral dan bahu. Kebanyakkan menggunakan siku body-powered dan alat myoelektrik terminal (hook atau tangan). Konfigurasi ini membuat komponen dapat dioperasikan secara simultan. Prosthesis ini juga memiliki kekuatan lebih baik untuk menggenggam.',
    'con1': 'Adapun prosthesis menurut level amputasi dibagi menjadi (Watve et al., 2011):\n'
        '• Forequarter: level tertinggi amputasi dan \n   prosthesis harus melingkupi seluruh sendi.'
        '\n• Through shoulder: dengan clavicula dan scapula \n   yang masih ada, pasien lebih mudah untuk \n   menahan berat dari prosthesis. '
        '\n• Trans-humeral: level ini memudahkan berbagai \n   metode untuk pemasangan prosthesis.'
        '\n• Disartikulasi siku: level ini tidak dapat \n   memudahkan prosthesis siku untuk terpasang\n   tanpa harus terdapat pemanjangan dari segmen\n   atas. '
        '\n• Trans-radial: dengan adanya sendi siku, pasien \n   masih memiliki kontrol besar dalam mendukung \n   prosthesis. '
        '\n• Wrist disarticulation: level ini membatasi fitting \n   dari tangan konvensional tanpa harus\n   memanjangkan prosthesis.'
        '\n• Abnormalitas kongenital pada tangan/ partial \n   hand: prosthesis konvensional tidak dapat \n   digunakan pada pasien dengan abnormalitas\n   minor, seperti jari yang pendek. '
        '\n• Digital replacement: dapat dibuat dari silikon atau \n   PVC, digunakan secara umum untuk \n   kosmetik.'
  },
  {
    'ekstrem': ' Prosthesis Ekstremitas Atas',
    'content':
        'Saat amputasi pada ekstremitas bawah dilakukan, seleksi dari level yang tepat merupakan hal penting untuk mengoptimalisasi potensi penyembuhan dan juga pengembalian fungsi ekstremitas.',
    'ekstrem1': ' Partial Foot Prosthesis',
    'content1':
        'Partial foot prosthesis yang menyilang pada sendi pergelangan kaki cocok digunakan pasca amputasi transmetatarsal untuk memberi gaya tambahan untuk gerakan mendorong dan menambah stabilitas pasien dengan instabilitas yang kurang (Crowe et al., 2019).',
    'ekstrem2': ' Patellar Tendon-bearing Prosthesis',
    'content2':
        'Prosthesis ini digunakan untuk short residual foot (amputasi midfoot), walaupun prosthesis ini lebih bulky dan panjang tambahan diperlukan sesuai level amputasi. Prosthesis yang digunakan di atas pergelangan kaki dapat melindungi lokasi amputasi dan mengkoreksi deformitas varus (Crowe et al., 2019).',
    'ekstrem3': ' Closed Prosthesis dan Windowed Prosthesis',
    'content3':
        'Closed prosthesis digunakan pasca amputasi Syme yang mempunyai stove-pipe karena prosthesis ini menggunakan kaki yang tersisa untuk membantu gerakan prosthesis. Windowed prosthesis juga digunakan pasca amputasi Syme yang membuat gerakan pergelangan kaki eksternal lebih baik dan harus ditutup menggunakan strap Velcro (Crowe et al., 2019).',
    'ekstrem4': ' Prosthesis untuk Amputasi di Bawah Lutut',
    'content4':
        'Prosthesis untuk amputasi ini meliputi beberapa elemen: socket, interface, suspensi, shank, dan kaki/ pergelangan kaki. Prosthesis socket akan membungkus kaki yang tersisa yang membuat distribusi berat lebih seimbang. Interface merupakan material antara socket dan kaki yang tersisa yang biasanya adalah liner. Suspensi merupakan metode untuk menempelkan prosthesis pada kaki yang tersisa tergantung struktur anatomi dari kaki. Sedangkan prosthesis bagian kaki meliputi solid-ankle cushioned heel, single-axis, multi-axis, dan respons penyimpanan energi, hydraulic, dan micropressor feet. Kekurangan dari prosthesis ini adalah sulitnya melakukan dorsifleksi (Crowe et al., 2019).',
    'ekstrem5': ' Prosthesis untuk Amputasi di Atas Lutut',
    'content5':
        'Prosthesis bawah lutut, desain socket, interface, dan suspensi merupakan hal penting pada prosthesis untuk amputasi di atas lutut. Tantangan utama untuk mereka yang mengalami amputasi transfemoral adalah pasien harus mengandalkan dua sendi prosthesis saat ambulasi.\n'
            'Beberapa prosthesis lutut meliputi locking kee, single axis knee with stance control, single-axis knee without stance control, dan four-bar polycentric knees (Crowe et al., 2019).',
  },
  {
    'judul': 'Rehabilitasi Menggunakan Prosthesis',
    'contentHead':
        'Rehabilitasi harus dimulai 5 hari post-operatif, bahkan kalau bisa sudah harus menemui terapis sebelum melakukan amputasi. Latihan dari penggunaan prosthesis harus mengorientasikan titik gravitasi dan beban yang harus ditanggung oleh prosthesis.',
    'ekstrem': ' Ekstremitas Atas',
    'content':
        'Rehabilitasi termasuk ROM aktif dan pasif harus segera dilakukan untuk menguatkan otot dan meminimalisir kontraktur dan edem. Nyeri yang dirasakan pada bagian yang diamputasi dapat terjadi karena beberapa penyebab yang harus segera diidentifikasi. Permasalahan kulit seperti infeksi (folliculitis, abses, dan infeksi jamur) dan dermatitis juga harus segera ditangani. Dermatitis alergi juga harus diidentifikasi yang mungkin disebabkan oleh material dari prosthesis. Steroids topikal mungkin dapat diberikan.'
            '\nKebanyakkan nyeri yang dihadapi pasien merupakan phantom pain yang biasanya semakin parah pada tahun pertama, dimana direkomendasikan pemberian amitriptyline dan pregabalin jika ini sudah mengganggu mood dari pasien. Penggunaan prosthesis juga diketahui mampu memperparah phantom pain ini. Terapi cermin diketahui dapat membantu dan merupakan prosedur non-invasif. Nyeri pada bekas luka juga dapat terjadi dan dapat dibantu dengan memijat bekas luka dengan emolien.',
  },
  {
    'ekstrem': ' Ekstremitas Bawah',
    'content': 'Beberapa latihan rehabilitasi untuk prosthesis ekstremitas bawah antara lain:'
        '\na. Lateral Weight Shifting: latihan ini mampu\n    membantu pasien untuk mengkontraksi otot\n    gluteal dan otot kaki yang tersisa.'
        '\nb. Forward and Back Weight Shifting: latihan ini\n    dilakukan seperti lateral weight shifting namun\n    berat tubuh digerakkan ke depan dan ke belakang.'
        '\nc. Stair/ Stool Stepping: dengan bantuan kedua\n    tangan, pasien dapat menapakkan prosthesis\n    ke lantai dengan tinggi sekitar 4-8 inches (Gailey\n    and Curtis, 2015).'
        '\nd. Balance Board: digunakan untuk latihan weight\n    bearing.'
        '\ne. Throwing and Catching: berdiri di antara bar\n    paralel sebagai bantuan, pasien melakukan\n    lempar tangkap dengan terapis.'
        '\nf. Ball Rolling: untuk meningkatkan kualitas postur\n    berdiri dan stabilitas.'
        '\ng. Single Leg Standing: menstabilisasi bagian\n    prosthesis.'
        '\nh. Kicking A Ball: berdiri pada bagian prosthesis,\n    pasien menendang bola dengan kaki non-\n    prosthesis.'
        '\ni.  Single Limb Stand With Theraband',
  },
  {
    'judul': 'Psikologis pada Pasien dengan Prosthesis',
    'contentHead':
        'Keadaan mental seseorang yang harus melalui amputasi diketahui lebih riskan dalam menyesuaikan psikologis nya terhadap keadaan baru. Hal ini termasuk altered body image dan post-traumatic stress disorder. Mereka yang mengalami amputasi spontan ditemukan lebih mudah jatuh ke dalam kondisi tersebut. Pasien akan mengalami kesulitan yang hebat dalam menyesuaikan dirinya. Ahli bedah harus bisa menghadapi hal ini dikarenakan pasien bisa saja memilih untuk tidak menggunakan prosthesis dan tidak ingin mengikuti rehabilitasi yang direncanakan untuk pasien. Studi lebih lanjut masih diperlukan untuk mengetahui efek psikologis yang dihadapi pasien (Watve et al., 2011).',
  }
];

class Rehabilitasi extends StatelessWidget {
  const Rehabilitasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      'Rehabilitasi',
                      style: TextStyle(
                        fontSize: getWidth(20),
                        fontWeight: bold,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                SizedBox(
                  height: getHeight(25),
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  itemCount: noRehab.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      padding: EdgeInsets.zero,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: noRehab[index]['no'] != null &&
                                conRehab[index]['judul'] != null,
                            child: Text(
                              '${noRehab[index]['no']} '
                              '${conRehab[index]['judul']}',
                              style: TextStyle(
                                  fontWeight: bold, fontSize: getWidth(16)),
                            ),
                          ),
                          Visibility(
                            visible: conRehab[index]['contentHead'] != null,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: getWidth(10),
                                ),
                                Expanded(
                                  child:
                                      Text('${conRehab[index]['contentHead']}'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getHeight(5),
                          ),
                          Visibility(
                            visible: noRehab[index]['noHead'] != null &&
                                conRehab[index]['ekstrem'] != null,
                            child: Text(
                              '${noRehab[index]['noHead']}'
                              '${conRehab[index]['ekstrem']}',
                              style: TextStyle(fontWeight: bold),
                            ),
                          ),
                          Visibility(
                            visible: conRehab[index]['content'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(35),
                                ),
                                Expanded(
                                  child: ExpandableText(
                                    '${conRehab[index]['content']}',
                                    textAlign: TextAlign.justify,
                                    expandText: 'Tampilkan',
                                    collapseText: 'Sembunyikan',
                                    maxLines: 5,
                                    animation: true,
                                    animationDuration:
                                        const Duration(milliseconds: 1500),
                                    collapseOnTextTap: true,
                                    expandOnTextTap: true,
                                    linkColor: orangecolorbut,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: noRehab[index]['noSubA'] != null &&
                                conRehab[index]['ekstrem1'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(15),
                                ),
                                Text(
                                  '${noRehab[index]['noSubA']}'
                                  '${conRehab[index]['ekstrem1']}',
                                  style: TextStyle(fontWeight: bold),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: conRehab[index]['content1'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(70),
                                ),
                                Expanded(
                                    child: ExpandableText(
                                  '${conRehab[index]['content1']}',
                                  textAlign: TextAlign.justify,
                                  expandText: 'Tampilkan',
                                  collapseText: 'Sembunyikan',
                                  maxLines: 1,
                                  animation: true,
                                  animationDuration:
                                      const Duration(milliseconds: 1500),
                                  collapseOnTextTap: true,
                                  expandOnTextTap: true,
                                  linkColor: orangecolorbut,
                                )),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: noRehab[index]['noSubB'] != null &&
                                conRehab[index]['ekstrem2'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(15),
                                ),
                                Text(
                                  '${noRehab[index]['noSubB']}'
                                  '${conRehab[index]['ekstrem2']}',
                                  style: TextStyle(fontWeight: bold),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: conRehab[index]['content2'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(70),
                                ),
                                Expanded(
                                    child: ExpandableText(
                                  '${conRehab[index]['content2']}',
                                  textAlign: TextAlign.justify,
                                  expandText: 'Tampilkan',
                                  collapseText: 'Sembunyikan',
                                  maxLines: 1,
                                  animation: true,
                                  animationDuration:
                                      const Duration(milliseconds: 1500),
                                  collapseOnTextTap: true,
                                  expandOnTextTap: true,
                                  linkColor: orangecolorbut,
                                )),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: noRehab[index]['noSubC'] != null &&
                                conRehab[index]['ekstrem3'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(15),
                                ),
                                Text(
                                  '${noRehab[index]['noSubC']}'
                                  '${conRehab[index]['ekstrem3']}',
                                  style: TextStyle(fontWeight: bold),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: conRehab[index]['content3'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(70),
                                ),
                                Expanded(
                                    child: ExpandableText(
                                  '${conRehab[index]['content3']}',
                                  textAlign: TextAlign.justify,
                                  expandText: 'Tampilkan',
                                  collapseText: 'Sembunyikan',
                                  maxLines: 1,
                                  animation: true,
                                  animationDuration:
                                      const Duration(milliseconds: 1500),
                                  collapseOnTextTap: true,
                                  expandOnTextTap: true,
                                  linkColor: orangecolorbut,
                                )),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: noRehab[index]['noSubD'] != null &&
                                conRehab[index]['ekstrem4'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(15),
                                ),
                                Text(
                                  '${noRehab[index]['noSubD']}'
                                  '${conRehab[index]['ekstrem4']}',
                                  style: TextStyle(fontWeight: bold),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: conRehab[index]['content4'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(70),
                                ),
                                Expanded(
                                    child: ExpandableText(
                                  '${conRehab[index]['content4']}',
                                  textAlign: TextAlign.justify,
                                  expandText: 'Tampilkan',
                                  collapseText: 'Sembunyikan',
                                  maxLines: 1,
                                  animation: true,
                                  animationDuration:
                                      const Duration(milliseconds: 1500),
                                  collapseOnTextTap: true,
                                  expandOnTextTap: true,
                                  linkColor: orangecolorbut,
                                )),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: conRehab[index]['con1'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(38),
                                ),
                                Expanded(
                                    child: ExpandableText(
                                  '${conRehab[index]['con1']}',
                                  textAlign: TextAlign.justify,
                                  expandText: 'Tampilkan',
                                  collapseText: 'Sembunyikan',
                                  maxLines: 3,
                                  animation: true,
                                  animationDuration:
                                      const Duration(milliseconds: 1500),
                                  collapseOnTextTap: true,
                                  expandOnTextTap: true,
                                  linkColor: orangecolorbut,
                                )),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: noRehab[index]['noSubE'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(15),
                                ),
                                Text(
                                  '${noRehab[index]['noSubE']}'
                                  '${conRehab[index]['ekstrem5']}',
                                  style: TextStyle(fontWeight: bold),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: conRehab[index]['content5'] != null,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(70),
                                ),
                                Expanded(
                                    child: ExpandableText(
                                  '${conRehab[index]['content5']}',
                                  textAlign: TextAlign.justify,
                                  expandText: 'Tampilkan',
                                  collapseText: 'Sembunyikan',
                                  maxLines: 1,
                                  animation: true,
                                  animationDuration:
                                      const Duration(milliseconds: 1500),
                                  collapseOnTextTap: true,
                                  expandOnTextTap: true,
                                  linkColor: orangecolorbut,
                                )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getHeight(5),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Text(
                  'References',
                  style: TextStyle(fontWeight: bold, fontSize: getWidth(16)),
                ),
                const Text(
                    'Esquenazi A. Upper limb amputation, rehabilitation & prosthetic restoration. In: Maitin IB, Cruz E, editors. Current diagnosis & treatment: Physical medicine & rehabilitation. New York: McGraw-Hill Education.; 2015. pp. 453–459.\n'
                    '\nBiddiss E, Chau T. Upper-limb prosthetics: Critical factors in device abandonment. American Journal of Physical Medicine & Rehabilitation. 2007b;86(12):977–987.\n'
                    '\nBritish association of Chartered Physiotherapists in Amputee Rehabilitation. Evidenced Based Clinical Guidelines for the Physiotherapy Management of Adults with Lower limb Prosthesis. CSP Clinical Guideline 03. November 2012\n'
                    '\nCrowe, C. S. et al. (2019) ‘Prosthetic and orthotic options for lower extremity amputation and reconstruction’, Plastic and Aesthetic Research. OAE Publishing Inc., 2019. doi: 10.20517/2347-9264.2018.70.\n'
                    '\nWatve, S. et al. (2011) ‘Upper limb prosthetic rehabilitation’, Orthopaedics and Trauma. Churchill Livingstone, 25(2), pp. 135–142. doi: 10.1016/j.mporth.2010.10.003.\n')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
