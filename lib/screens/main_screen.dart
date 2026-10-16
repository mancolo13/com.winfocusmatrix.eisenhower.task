import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab4Screen(),
    Tab3Screen(),
    Tab1Screen(),
    Tab2Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.grid_4x4_outlined),
          selectedIcon: const Icon(Icons.grid_4x4, color: AppTheme.primaryColor),
          label: 'Matrix',
        ),
        NavigationDestination(
          icon: const Icon(Icons.check_box_outlined),
          selectedIcon: const Icon(Icons.check_box, color: AppTheme.primaryColor),
          label: 'Tasks',
        ),
        NavigationDestination(
          icon: const Icon(Icons.assignment_ind_outlined),
          selectedIcon: const Icon(Icons.assignment_ind, color: AppTheme.primaryColor),
          label: 'Delegated',
        ),
        NavigationDestination(
          icon: const Icon(Icons.archive_outlined),
          selectedIcon: const Icon(Icons.archive, color: AppTheme.primaryColor),
          label: 'Archived',
        ),
        ],
      ),
    );
  }
}
