import 'package:flutter/material.dart';
import 'package:flutter_tuto/custom_app_bar.dart';
import 'package:flutter_tuto/custom_navigation_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tuto/app_change_notifier.dart';

void main() {
  runApp(const AppWidget());
}

final appProvider = ChangeNotifierProvider((ref) => AppChangeNotifier());

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

    return Scaffold(
      appBar: CustomAppBar(title: providerRef.titles[providerRef.currentPage]),
      body: providerRef.pages[providerRef.currentPage],
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
