import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/blocs/home_bloc.dart';
import 'package:my_event_app/common/custom_drawer/page-manager.dart';
import 'package:my_event_app/main.dart';
import 'package:my_event_app/ui/filter/filter_screen.dart';
import 'package:my_event_app/ui/profile/profile_screen.dart';
import 'package:my_event_app/ui/time-line/time-line_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final int selectedPage;

  const HomeScreen({required this.selectedPage});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _userImage = "assets/images/eu.png";

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeBloc>(builder: (_, homeScreen, __) {
      return DefaultTabController(
        length: 3, // Added
        initialIndex: widget.selectedPage,
        child: Scaffold(
          appBar: AppBar(
            leadingWidth: 15.toScale,
            titleSpacing: 5,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  homeScreen.getTitle(),
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    fontFamily: GoogleFonts.bungee().fontFamily,
                    shadows: <Shadow>[
                      Shadow(
                        color: Colors.grey,
                      blurRadius: 3,
                        offset: Offset(2, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
            actions: <Widget>[
              Container(
                width: 70.toScale,
                child: IconButton(
                  icon: CircleAvatar(
                    radius: 25.toScale,
                    backgroundImage: AssetImage(_userImage),
                  ),
                  onPressed: () {
                    context.read<PageManager>().setPage(2);
                  },
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white10,
            selectedIconTheme:
                IconThemeData(color: Theme.of(context).primaryColor, size: 40),
            selectedItemColor: Colors.black,
            selectedLabelStyle: TextStyle(
              fontFamily: GoogleFonts.bungee().fontFamily,
            ),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            elevation: 0,
            onTap: (page) {
              if (page == 0) {
                homeScreen.setTitle("FILTROS");
                context.read<PageManager>().setPage(page + 1);
              } else if (page == 1) {
                homeScreen.setTitle("EVENTOS");
                context.read<PageManager>().setPage(page - 1);
              } else {
                homeScreen.setTitle("PERFIL");
                context.read<PageManager>().setPage(page);
              }
            },
            currentIndex: widget.selectedPage,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                title: Text(
                  "",
                  style: TextStyle(
                    fontSize: 7.toScale,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                ),
                title: Text(
                  "",
                  style: TextStyle(
                    fontSize: 7.toScale,
                  ),
                ),
              ),
              BottomNavigationBarItem( 
                icon: Icon(
                  Icons.person,
                ),
                title: Text(
                  "",
                  style: TextStyle(
                    fontSize: 7.toScale,
                  ),
                ),
              ),
            ],
          ),
          body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
            FilterScreen(),
            TimeLineScreen(),
            ProfileScreen(),
          ]),
        ),
      );
    });
  }
}
