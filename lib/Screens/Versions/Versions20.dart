import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL() async {
  const url =
      'https://osdn.net/projects/deepin/storage/20/deepin-desktop-community-1002-amd64.iso/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Version20 extends StatefulWidget {
  const Version20({Key? key}) : super(key: key);

  @override
  State<Version20> createState() => _Version20State();
}

class _Version20State extends State<Version20> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color(0xff33ccff),
                  Color(0xffff99cc),
                ],
              ),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: FaIcon(
                FontAwesomeIcons.arrowLeft,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/deepin20.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff33ccff),
                    Color(0xffff99cc),
                  ],
                ),
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _launchURL();
                  });
                },
                child: Text(
                  'Download OS',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}