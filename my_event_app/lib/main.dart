import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/blocs/filter_bloc.dart';
import 'package:my_event_app/blocs/home_bloc.dart';
import 'package:my_event_app/ui/login-option/login-option_screen.dart';
import 'package:my_event_app/ui/login/login_screen.dart';
import 'package:my_event_app/ui/signup/signup_screen.dart';
import 'package:my_event_app/ui/splash/splash_screen.dart';
import 'package:my_event_app/ui/under-contruction/under-contruction_screen.dart';
import 'package:provider/provider.dart';

import 'blocs/user_bloc.dart';

double scaleFactor = 1;

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static const Color DEFAULT_COLOR = Color(0xFF9D3BE1);

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp> {
  Color _primaryColor = MyApp.DEFAULT_COLOR;

  setPrimaryColor(Color color) {
    setState(() {
      _primaryColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserBloc()),
        ChangeNotifierProvider(create: (_) => HomeBloc()),
        ChangeNotifierProvider(create: (_) => FilterBloc()),
      ],
      child: MaterialApp(
        title: 'ME - My Event',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: _primaryColor,
          scaffoldBackgroundColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(),
          fontFamily: GoogleFonts.roboto().fontFamily,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: const AppBarTheme(elevation: 0),
        ),
        initialRoute: "/splashScreen",
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case "/splashScreen":
              return MaterialPageRoute(builder: (_) => SplashScreen());
            case "/loginOptionScreen":
              return MaterialPageRoute(builder: (_) => LoginOptionScreen());
            case "/loginScreen":
              return MaterialPageRoute(builder: (_) => LoginScreen());
            case "/singnUpScreen":
              return MaterialPageRoute(builder: (_) => SignUpScreen());
            case "/underContructionScreen":
              return MaterialPageRoute(
                  builder: (_) => UnderContructionScreen());
          }
        },
      ),
    );
  }
}

extension ScaleFactorExtension on num {
  double get toScale => this * scaleFactor;
}
