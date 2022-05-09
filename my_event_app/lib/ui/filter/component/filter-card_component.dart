import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/blocs/filter_bloc.dart';
import 'package:my_event_app/main.dart';

class FilterCardComponent extends StatelessWidget {
  final FilterBloc filterBloc;

  const FilterCardComponent({required this.filterBloc});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Color(0xFFF5F5F5),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 25.toScale),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: _filterTypeButton(
                        context: context,
                        title: "Estilo",
                        onClick: () {},
                        filterBloc: filterBloc,
                        isSelected: filterBloc.selectedStyleFilterButton)),
                Expanded(
                    child: _filterTypeButton(
                        context: context,
                        title: "LGBTQIA+",
                        onClick: () {},
                        filterBloc: filterBloc,
                        isSelected: filterBloc.selectedLGBTQIAButton))
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _filterTypeButton(
    {required BuildContext context,
    required String title,
    required Function onClick,
    required FilterBloc filterBloc,
    required bool isSelected}) {
  return Container(
    margin: EdgeInsets.only(left: 25.toScale, right: 25.toScale),
    child: InkWell(
      onTap: () {
        filterBloc.setSeletedButton(title);
        onClick();
      },
      child: Card(
        color: Color(0xFFFEAE9E9),
        elevation: isSelected ? 5 : 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.toScale)),
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(15.toScale),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.toScale,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              fontFamily: GoogleFonts.bungee().fontFamily,
            ),
          ),
        ),
      ),
    ),
  );
}
