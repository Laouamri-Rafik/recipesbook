import 'package:flutter/material.dart';


void main()
{
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  @override
  Widget build(BuildContext context) {

    ThemeData app_theme = ThemeData();
    app_theme = app_theme.copyWith(
      colorScheme: app_theme.colorScheme.copyWith(
        primary: Color.fromARGB(255, 196, 105, 105),
        secondary: Colors.white,
      )
    );

    return MaterialApp(
      title: "Recipes Book",
      theme: app_theme,
      home: const MyhomePage(title : 'Recipes Book'),
    );
  }
}


class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key,required this.title});

  final String title;

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title)
        ),
      body: SafeArea(
        child: Container()
        ),
    );
  }
}

