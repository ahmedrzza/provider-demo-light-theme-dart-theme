import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/theme_changer%20_provider.dart';

class Dark_theme extends StatelessWidget {
  const Dark_theme({super.key});

  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme changer'),
      ),
      body: Column(children: [
        RadioListTile<ThemeMode>(
          title: Text("Light Mode"),
          value: ThemeMode.light,
          groupValue: themechanger.thememode,
          onChanged: themechanger.setTheme,
        ),
        RadioListTile<ThemeMode>(
          title: Text("Dark Mode"),
          value: ThemeMode.dark,
          groupValue: themechanger.thememode,
          onChanged: themechanger.setTheme,
        ),
        RadioListTile<ThemeMode>(
          title: Text("System Mode"),
          value: ThemeMode.system,
          groupValue: themechanger.thememode,
          onChanged: themechanger.setTheme,
        ),
        Icon(Icons.favorite,size: 30,)
      ]),
    );
  }
}
