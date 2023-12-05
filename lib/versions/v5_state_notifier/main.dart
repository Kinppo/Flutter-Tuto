import 'package:flutter/material.dart';
import 'package:flutter_tuto/custom_app_bar.dart';
import 'package:flutter_tuto/custom_navigation_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tuto/app_state_notifier.dart';
import 'package:flutter_tuto/home_page.dart';
import 'package:flutter_tuto/profile_page.dart';

void main() {
  runApp(const AppWidget());
}

final appProvider = StateNotifierProvider<AppStateNotifier, AppState>(
    (ref) => AppStateNotifier());

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends ConsumerWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerRef = ref.watch(appProvider);
    final List<Widget> pages = [HomePage(), const ProfilePage()];
    final List<String> titles = ["Home Page", "Profile Page"];

    return Scaffold(
      appBar: CustomAppBar(title: titles[providerRef.currentPage]),
      body: pages[providerRef.currentPage],
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
