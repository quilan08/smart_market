import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:smart_market/Screens/customer_service.dart';
import 'package:smart_market/Screens/details.dart';
import 'package:smart_market/Screens/home_screen.dart';
import 'package:smart_market/Screens/settings.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void _TapIndex(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  static final List<Widget> _widgetScreen = <Widget>[
    const HomeScreen(),
    const DetailsScreen(),
    const CustomerServiceScreen(),
    const SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            child: _widgetScreen[_selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _TapIndex,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items:const [
          BottomNavigationBarItem(icon: Icon(FluentIcons.home_12_regular), activeIcon: Icon(FluentIcons.home_12_filled), label: "Home",),
           BottomNavigationBarItem(icon :Icon(FluentIcons.cart_20_regular), activeIcon: Icon(FluentIcons.cart_20_filled), label: "Cart",),
           BottomNavigationBarItem(icon :Icon(FluentIcons.apps_list_detail_20_filled), activeIcon: Icon(FluentIcons.decimal_arrow_left_20_filled), label: "Details",),
            BottomNavigationBarItem(icon :Icon(FluentIcons.settings_16_regular), activeIcon: Icon(FluentIcons.settings_20_filled), label: "Settings",),
      ],),
    );
  }
}