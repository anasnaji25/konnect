import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnect/const/app_colors.dart';
import 'package:konnect/views/home_view/home_view.dart';
import 'package:konnect/views/store_view/store_main_list_view.dart';
import 'package:konnect/views/transactions_view/transactions_view.dart';

class HomePageWithNavigation extends StatefulWidget {
  int index;
  HomePageWithNavigation({Key? key, this.index = 0}) : super(key: key);

  @override
  State<HomePageWithNavigation> createState() => _HomePageWithNavigationState();
}

class _HomePageWithNavigationState extends State<HomePageWithNavigation> {
  int _selectedIndex = 0;
  Color color = const Color.fromARGB(
    255,
    0,
    96,
    50,
  );

  List pages = [
    HomeView(),
    TransactionView(),
    StoreMainListView(),
    HomeView(),
    HomeView(),
  ];

  void _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedIndex = widget.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Path 1639.png",
              height: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Layer 81.png",
              height: 20,
            ),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Page-1.png",
              height: 20,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Layer 2.png",
              height: 20,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Path 1640.png",
              height: 20,
            ),
            label: 'Banking',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        unselectedItemColor: primaryColor.withOpacity(0.5),
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
