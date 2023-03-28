import 'package:flutter/material.dart';
import 'package:provider_demo/home.dart';
import 'package:provider_demo/provider/ApisLogin/auth_provider.dart';
import 'package:provider_demo/provider/ApisLogin/login.dart';
import 'package:provider_demo/provider/count_Provider.dart';
import 'package:provider_demo/provider/example_one_provider.dart';
import 'package:provider_demo/provider/favouriteClass.dart';
import 'package:provider_demo/provider/favourite_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/statless_as_statefull/statless_as_statefull.dart';
import 'package:provider_demo/provider/theme/darktheme_Screem.dart';
import 'package:provider_demo/provider/theme_changer%20_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //provider count class
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleoneProvider()),
        ChangeNotifierProvider(create: (_) => FavouritemItemProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ChangeNotifierProvider(create: (_) => AuthProvider())
      ],
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: Provider.of<ThemeChanger>(context).thememode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.purple,
            ),
            darkTheme: ThemeData(
              primarySwatch: Colors.green,
              brightness: Brightness.dark,
              iconTheme: IconThemeData(color: Colors.pink),
              appBarTheme: AppBarTheme(
                color: Colors.pinkAccent,
              ),
            ),
            debugShowCheckedModeBanner: false,
            home:const Home_Screen(),
          );
        },
      ),
    );
  }
}
