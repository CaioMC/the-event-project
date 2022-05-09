import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_event_app/main.dart';

class EventCardDetailDialog extends StatefulWidget {
  @override
  _EventCardDetailDialogState createState() => _EventCardDetailDialogState();
}

class _EventCardDetailDialogState extends State<EventCardDetailDialog> {
  CarouselController _controller = CarouselController();

  int _current = 0;
  final List<String> imgList = [
    'assets/images/profile-banner.png',
    'assets/images/profile-banner.png',
    'assets/images/wwdc1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 5,
      child: Card(
        color: Colors.grey[300],
        margin: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _carouselWithIndicator(),
            _cardWithInformation(),
          ],
        ),
      ),
    );
  }

  Widget _carouselWithIndicator() {
    return Container(
      margin: EdgeInsets.only(top: 5.toScale),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CarouselSlider(
                  items: widgetList(),
                  carouselController: _controller,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  List<Widget> widgetList() {
    return imgList
        .map(
          (item) => Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
        .toList();
  }

  Widget _cardWithInformation() {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(15.toScale),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10.toScale),
                        child: Text(
                          "WWDC 2021",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18.toScale,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.toScale),
                        child: Text(
                          "lorem ipsum dolor sit amet consectetur adipiscing elit varius fusce sodales vulputate praesent penatibus pulvinar risus blandit feugiat dictum sollicitudin orci sagittis ",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 12.toScale,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.asset(
                      "assets/images/wwdc1.png",
                      height: 95.toScale,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Data: 11/10/2021",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 12.toScale,
                      ),
                    ),
                    Text(
                      "Horário: 14:00",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 12.toScale,
                      ),
                    ),
                    Text(
                      "Local: Web Conference",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 12.toScale,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Container(
                            color: Theme.of(context).primaryColor,
                            height: 5.toScale,
                            width: 5.toScale,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.toScale),
                          child: Text(
                            "Confirmados: 100",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width <= 350 ? 8.toScale : 12.toScale,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipOval(
                          child: Container(
                            color: Color(0xFFF5B24C),
                            height: 5.toScale,
                            width: 5.toScale,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.toScale),
                          child: Text(
                            "Interessados: 600",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width <= 350 ? 8.toScale : 12.toScale,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.toScale),
              child: Divider(
                thickness: 2,
                color: Colors.grey[300],
              ),
            ),
            _tickets()
          ],
        ),
      ),
    );
  }

  Widget _tickets() {
    return Container(
      height: 75.toScale,
      margin: EdgeInsets.only(top: 10.toScale),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _ticketCard(),
          _ticketCard(),
          _ticketCard(),
          _ticketCard(),
          _ticketCard(),
          _ticketCard(),
        ],
      ),
    );
  }

  Widget _ticketCard() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: () {},
        child: Card(
          color: Colors.grey[300],
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.toScale)),
          child: Container(
            margin: EdgeInsets.all(15.toScale),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Normal",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 12.toScale,
                  ),
                ),
                Text(
                  "R\$20,00",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 12.toScale,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
