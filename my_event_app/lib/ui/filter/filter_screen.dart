import 'package:flutter/material.dart';
import 'package:my_event_app/blocs/filter_bloc.dart';
import 'package:my_event_app/ui/filter/component/filter-card_component.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen();

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final ScrollController scrollController = ScrollController();
  final TextEditingController textController = TextEditingController();

  final scaffoldKey = GlobalKey<ScaffoldState>();
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
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FilterBloc>(builder: (_, filterBloc, __) {
      return Scaffold(
        key: scaffoldKey,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 50, 30, 50),
                  child: TextFormField(
                    controller: textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Procure por um evento',
                      prefixIcon: Icon(
                        Icons.search_sharp,
                      ),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Expanded(
                key: globalKey,
                child: FilterCardComponent(filterBloc: filterBloc, itemByLine: itemByLine)
              ),
            ],
          ),
        ),
      );
    });
  }
}
