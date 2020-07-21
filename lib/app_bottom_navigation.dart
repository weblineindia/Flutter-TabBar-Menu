import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  List<BottomNavigationBarItem> arrBottomItems = [];
  Color color;
  Color selectedColor;
  bool showSelectedLables;
  bool showUnselectedLables;
  Color backgroundColor;
  // ignore: sort_constructors_first
  BottomNavigation(
      {this.arrBottomItems,
      this.showSelectedLables,
      this.showUnselectedLables,
      this.backgroundColor,
      this.color,
      this.selectedColor});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigatorProvider>(
      builder: (ctx, item, child) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: arrBottomItems,
          showSelectedLabels: showSelectedLables,
          showUnselectedLabels: showUnselectedLables,
          backgroundColor: backgroundColor,
          selectedItemColor: selectedColor,
          unselectedItemColor: color,
          currentIndex: item.selectedIndex,
          onTap: (index) => _onItemTapped(index, context),
        );
      },
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    final bottomProvider =
        Provider.of<BottomNavigatorProvider>(context, listen: false);
    bottomProvider.setSelectedIndex(selectedBottomOption: index);
  }
}

BottomNavigationBarItem tabItem(String title, IconData icon) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    title: Text(title),
  );
}

class BottomNavigatorProvider with ChangeNotifier {
  int selectedIndex = 0;

  void setSelectedIndex({int selectedBottomOption = 0}) {
    selectedIndex = selectedBottomOption;
    notifyListeners();
  }
}
