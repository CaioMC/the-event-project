import 'package:flutter/material.dart';
import 'package:my_event_app/main.dart';
import 'package:my_event_app/ui/component/event-card_component.dart';

class TimeLineScreen extends StatefulWidget {
  const TimeLineScreen();

  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: scrollController,
      thumbColor: Theme.of(context).primaryColor,
      isAlwaysShown: true,
      child: ListView(
        controller: scrollController,
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(20.toScale, 20.toScale, 20.toScale, 20.toScale),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              EventCardComponent(
                imagePath: 'assets/images/wwdc1.png',
                title: "WWDC 2021",
                date: "11/10/2021",
                time: "14:00",
                place: "Web Conferece",
                confirmedPeople: "100",
                interestedPeople: "600",
                price: "20,00",
              ),
            ],
          )
        ],
      ),
    );
  }
}