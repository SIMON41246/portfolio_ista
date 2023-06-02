import 'package:flutter/cupertino.dart';

class AboutPage extends StatefulWidget {
  static const PAGE="/about";

  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
