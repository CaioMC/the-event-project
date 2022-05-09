import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/blocs/filter_bloc.dart';
import 'package:my_event_app/main.dart';
import 'package:my_event_app/ui/filter/component/filter-item_component.dart';

class FilterCardComponent extends StatelessWidget {
  final FilterBloc filterBloc;
  final int itemByLine;

  const FilterCardComponent(
      {required this.filterBloc, required this.itemByLine});

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
          _filters(context: context, filterBloc: filterBloc),
          _filterItems(context: context, itemByLine: itemByLine)
        ],
      ),
    );
  }
}

Widget _filterItems({required BuildContext context, required int itemByLine}) {
  return Container(
    margin: EdgeInsets.only(top: 25.toScale,bottom: 25.toScale),
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
        return FilterItemComponent(
          title: "Eletrônica",
        );
      },
    ),
  );
}

Widget _filters(
    {required BuildContext context, required FilterBloc filterBloc}) {
  return Container(
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
  );
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
