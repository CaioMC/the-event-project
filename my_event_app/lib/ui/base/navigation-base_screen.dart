import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_event_app/common/custom_drawer/page-manager.dart';
import 'package:my_event_app/ui/home/home_screen.dart';
import 'package:provider/provider.dart';

class NavigationBaseScreen extends StatefulWidget {
  @override
  _NavigationBaseScreenState createState() => _NavigationBaseScreenState();
}

class _NavigationBaseScreenState extends State<NavigationBaseScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      builder: (context, child) {
        return PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomeScreen(selectedPage: 0),
            HomeScreen(selectedPage: 0),
            HomeScreen(selectedPage: 2)
          ],
        );
      },
    );
  }
}
