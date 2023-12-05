import 'package:flutter/material.dart';
import 'package:flutter_tuto/custom_app_bar.dart';
import 'package:flutter_tuto/custom_navigation_bar.dart';
import 'package:flutter_tuto/home_page.dart';
import 'package:flutter_tuto/profile_page.dart';
import 'package:flutter_tuto/randomizer_change_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final List<Widget> pages = [HomePage(), const ProfilePage()];
  final List<String> titles = ["Home Page", "Profile Page"];

  int currentPage = 0;

  void updateCurrentPage(int value) {
    setState(() {
      currentPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomizerChangeNotifier(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: CustomAppBar(title: titles[currentPage]),
          body: pages[currentPage],
          bottomNavigationBar: CustomNavigationBar(
            currentPage: currentPage,
            updateCurrentPage: updateCurrentPage,
          ),
        ),
      ),
    );
  }
}
