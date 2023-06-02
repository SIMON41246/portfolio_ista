import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_project/about_page.dart';

class TextForm extends StatelessWidget {
  final heading;
  final width;
  final hintText;
  final maxLines;

  TextForm(
      {Key? key,
      @required this.heading,
      @required this.width,
      @required this.hintText,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading, style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 5.0),
            SizedBox(
              width: width,
              child: TextFormField(
                //inputFormatters: [
                // LengthLimitingTextInputFormatter(10),
                //FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]'))
                //],
                maxLines: maxLines == null ? null : maxLines,
                decoration: InputDecoration(
                    focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.tealAccent, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: hintText,
                    hintStyle: GoogleFonts.poppins(fontSize: 14)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;

  const TabsMobile({Key? key, @required this.text, @required this.route})
      : super(key: key);

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      onPressed: () {
        Navigator.of(context).popAndPushNamed(widget.route);
      },
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20, color: Colors.white),
      ),
    );
  }
}

class TextBold extends StatelessWidget {
  final text;
  final size;

  const TextBold({Key? key, @required this.text, @required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class TextNormal extends StatelessWidget {
  final text;
  final size;
  final maxlines ;

  TextNormal(this.maxlines,
      {Key? key, @required this.text, @required this.size})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxlines  ?? 1   ,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class Sliverappbar extends StatefulWidget {
  const Sliverappbar({Key? key}) : super(key: key);

  @override
  State<Sliverappbar> createState() => _SliverappbarState();
}

class _SliverappbarState extends State<Sliverappbar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(size: 35.0, color: Colors.black),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(3.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: const Text(
              "My Works",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        background: Image.asset(
          "assets/works.jpg",
          filterQuality: FilterQuality.high,
          fit: BoxFit.cover,
        ),
      ),
      expandedHeight: 400.0,
    );
  }
}
