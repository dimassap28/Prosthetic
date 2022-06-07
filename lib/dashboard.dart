import 'package:flutter/material.dart';
import 'package:prosthesis/theme.dart';

String name = 'Doel';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        // bottom: true,
        child: Container(
          // color: Colors.blue,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, $name!",
                        ),
                        const Text(
                          "Sunday, 28 Juni 2022",
                        )
                      ],
                    ),
                    const Spacer(),
                    Image.asset("assets/icon/dashboard/profile.png")
                  ],
                ),
              ),
              Image.asset(
                "assets/icon/dashboard/slider.png",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              const Text(
                "Menu",
                style: TextStyle(),
              ),
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        width: 1,
                        color: graycolor,
                      ),
                    ),
                    child: Icon(Icons.abc_rounded, color: bluecolor),
                  ),
                  const Spacer(),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        width: 1,
                        color: graycolor,
                      ),
                    ),
                    child: Icon(Icons.abc_rounded, color: bluecolor),
                  ),
                  const Spacer(),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        width: 1,
                        color: graycolor,
                      ),
                    ),
                    child: Icon(Icons.abc_rounded, color: bluecolor),
                  ),
                  const Spacer(),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        width: 1,
                        color: graycolor,
                      ),
                    ),
                    child: Icon(Icons.abc_rounded, color: bluecolor),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text("Articles"),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See more"),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      // height: 180,
                      // width: 180,
                      decoration: BoxDecoration(color: bluecolor),
                      child: Column(
                        children: [
                          Image.asset("assets/icon/dashboard/thumbnail.jpg"),
                          const Text("data"),
                          const Text("data"),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      // height: 180,
                      // width: 180,
                      decoration: BoxDecoration(color: bluecolor),
                      child: Column(
                        children: [
                          Image.asset("assets/icon/dashboard/thumbnail.jpg"),
                          const Text("data"),
                          const Text("data"),
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(10),
                    //   width: double.infinity,
                    //   height: 300,
                    //   decoration: BoxDecoration(color: bluecolor),
                    //   child: const Text("grid1"),
                    // ),
                    // Container(
                    //   padding: const EdgeInsets.all(10),
                    //   width: double.infinity,
                    //   height: 300,
                    //   decoration: BoxDecoration(color: bluecolor),
                    //   child: const Text("grid2"),
                    // )
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
