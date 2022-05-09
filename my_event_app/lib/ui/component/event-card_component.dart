import 'package:flutter/material.dart';
import 'package:my_event_app/animations/animations.dart';
import 'package:my_event_app/main.dart';
import 'package:my_event_app/ui/component/dialog/event-card-detail_dialog.dart';

class EventCardComponent extends StatelessWidget {
  const EventCardComponent(
    {
      required this.imagePath,
      required this.title,
      required this.date,
      required this.time,
      required this.place,
      required this.confirmedPeople,
      required this.interestedPeople,
      required this.price,
    }
  );

  final String imagePath;
  final String title;
  final String date;
  final String time;
  final String place;
  final String confirmedPeople;
  final String interestedPeople;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _openDialogBoxShrink(context);
      },
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5.toScale),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                        height: 80.toScale,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5.toScale),
                      width: 2,
                      color: Colors.grey[300],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                this.title,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 16.toScale,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Data: ${this.date}",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12.toScale,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Horário: ${this.time}",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12.toScale,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Local: ${this.place}",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12.toScale,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 5.toScale, bottom: 5.toScale),
                                child: Column(
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
                                          margin:
                                              EdgeInsets.only(left: 5.toScale),
                                          child: Text(
                                            "Confirmados: ${this.confirmedPeople}",
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                              fontSize: 12.toScale,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ClipOval(
                                          child: Container(
                                            color: Color(0xFFF5B24C),
                                            height: 5.toScale,
                                            width: 5.toScale,
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(left: 5.toScale),
                                          child: Text(
                                            "Interessados: ${this.interestedPeople}",
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                              fontSize: 12.toScale,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 5.toScale, 5.toScale),
                  child: Column(
                    verticalDirection: VerticalDirection.up,
                    children: [
                      Text(
                        "R\$${this.price}",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 12.toScale,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _openDialogBoxShrink(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
        return Animations.shrink(_animation, _secondaryAnimation, _child);
      },
      pageBuilder: (_animation, _secondaryAnimation, _child) {
        return EventCardDetailDialog();
      },
    );
  }
}
