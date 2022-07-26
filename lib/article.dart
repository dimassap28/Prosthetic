import 'package:flutter/material.dart';
import 'package:prosthesis/theme.dart';

void main() {
  runApp(
    const Article(),
  );
}

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
            children: const [],
          ),
        )),
      ),
    );
  }
}
