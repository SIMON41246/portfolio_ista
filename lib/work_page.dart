import 'package:flutter/material.dart';

class Works extends StatefulWidget {
  static final PAGE="/works";

  const Works({Key? key}) : super(key: key);

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
    );
  }
}
