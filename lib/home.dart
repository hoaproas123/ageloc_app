import 'package:ageloc/pages/dashboard/dashBoard_index.dart';
import 'package:ageloc/widgets/build_appbar.dart';
import 'package:flutter/material.dart';
import 'package:ageloc/widgets/build_bottom_appbar.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ageloc App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFC6C0F)),
        useMaterial3: true,
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFFFC6C0F),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xFFFC6C0F),
            fontSize: 15,
          ),
          shape: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Color(0xFFFC6C0F),
                  width: 2,
              ),
          ),
          iconTheme: IconThemeData(color: Color(0xFFFC6C0F),),
        ),
        iconButtonTheme: const IconButtonThemeData(
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: BuildAppBar()
      ),
      body: DashboardIndex(),
      bottomNavigationBar: BuildBottomAppBar(),
    );
  }
}