import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tuto/main.dart';

class CustomNavigationBar extends ConsumerWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerRef = ref.watch(appProvider);

    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile")
      ],
      onDestinationSelected: (value) {
        return ref.read(appProvider).updateCurrentPage(value);
      },
      selectedIndex: providerRef.currentPage,
    );
  }
}
