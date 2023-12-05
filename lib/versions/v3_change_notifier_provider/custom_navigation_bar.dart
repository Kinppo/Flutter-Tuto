import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.currentPage,
    required this.updateCurrentPage,
  });

  final int currentPage;
  final void Function(int value) updateCurrentPage;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile")
      ],
      onDestinationSelected: (value) {
        return updateCurrentPage(value);
      },
      selectedIndex: currentPage,
    );
  }
}
