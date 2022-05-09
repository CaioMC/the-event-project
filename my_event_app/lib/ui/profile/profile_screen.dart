import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen();

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ScrollController scrollController = ScrollController();
  final GlobalKey globalKey = GlobalKey();
  
  static const int widthCard = 142;
  double height = 0.0;
  int itemByLine = 2;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      double widthScreen = MediaQuery.of(context).size.width;
      setState(() {
        height = globalKey.currentContext!.size!.height;
        itemByLine = (widthScreen / widthCard).floor();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/profile-banner.png',
                    fit: BoxFit.cover,
                    height: 180.toScale,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 160.toScale),
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: _mainContent(context, height, itemByLine),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(8.0.toScale),
              width: 50.toScale,
              child: Image.asset("assets/images/cool-icon.png"),
            ),
            _generalInformation(context, globalKey),
          ],
        )
      ],
    );
  }
}

Widget _mainContent(BuildContext context, double height, int itemByLine) {
  return Container(
    margin: EdgeInsets.only(top: height / 2.toScale),
    child: Column(
      children: [
        Text(
          "CONQUISTAS RECENTES",
          style: TextStyle(
            fontSize: 18.toScale,
            color: Theme.of(context).primaryColor,
            fontFamily: GoogleFonts.bungee().fontFamily,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 25.toScale),
          width: 170.toScale,
          child: Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 25.toScale),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 25, right: 25),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: itemByLine,
              crossAxisSpacing: 15,
              mainAxisSpacing: 25,
              mainAxisExtent: 150,
            ),
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) {
              return _achievementCard(
                  imagePath: "assets/images/wwdc1.png",
                  text: "WWDC 2021");
            },
          ),
        ),
      ],
    ),
  );
}

Widget _generalInformation(BuildContext context, GlobalKey globalKey) {
  return Column(
    key: globalKey,
    children: [
      Container(
        margin: EdgeInsets.only(top: 120.toScale, left: 35.toScale),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
                flex: 1,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 170.toScale),
                  child: Image.asset(
                    "assets/images/eu.png",
                    height: 120.toScale,
                    fit: BoxFit.fitWidth,
                  ),
                )),
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        20.toScale, 20.toScale, 20.toScale, 0),
                    child: Row(
                      children: [
                        Text(
                          "D'Artagnan Blenke",
                          style: TextStyle(
                            fontSize: 16.toScale,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8.0.toScale),
                          width: 25.toScale,
                          child: Image.asset("assets/images/check-symbol.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        20.toScale, 0.toScale, 20.toScale, 0),
                    child: Text(
                      "17 Selos",
                      style: TextStyle(
                        fontSize: 12.toScale,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget _achievementCard({required String imagePath, required String text}) {
  return Card(
    elevation: 5,
    shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.toScale)),
    child: Padding(
      padding: EdgeInsets.all(15.toScale),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Image.asset(
              imagePath,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 15.toScale),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.toScale,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
