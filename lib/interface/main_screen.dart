import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mooshaf_app/constants/app_colors.dart';
import 'package:mooshaf_app/constants/app_icons.dart';
import 'package:mooshaf_app/constants/app_strings.dart';
import 'package:mooshaf_app/interface/pages/home.dart';
import 'package:mooshaf_app/interface/pages/quran.dart';
import 'package:mooshaf_app/interface/pages/settings.dart';
import 'package:mooshaf_app/providers/interface_provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  late InterfaceProvider _interfaceProvider;

  @override
  Widget build(BuildContext context) {
    _interfaceProvider = Provider.of<InterfaceProvider>(context);
    int currentIndex = _interfaceProvider.currentBottomNavIndex;

    const List<Widget> pages = [QuranPage(), HomePage(), SettingsPage()];

    return AnnotatedRegion(
      value: currentIndex == 0
          ? SystemUiOverlayStyle.dark
          : currentIndex == 1
              ? SystemUiOverlayStyle.light
              : currentIndex == 2
                  ? SystemUiOverlayStyle.dark
                  : SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.primaryColor,
            onTap: (value) {
              _interfaceProvider.setCurrentIndexOfBottomNav(value);
            },
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  AppIcons.book,
                ),
                label: AppString.widgetQuran,
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.home),
                label: AppString.widgetHome,
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.settings),
                label: AppString.widgetSettings,
              ),
            ]),
      ),
    );
  }
}
