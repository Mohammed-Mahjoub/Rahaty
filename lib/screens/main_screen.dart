import 'package:flutter/material.dart';
import 'package:rahaty/screens/bn_screens.dart';
import 'package:rahaty/screens/dentest_screen.dart';
import 'package:rahaty/screens/favorite_screen.dart';
import 'package:rahaty/screens/home_screen.dart';
import 'package:rahaty/screens/profile_screen.dart';
import 'package:rahaty/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController _searchController;
  late TabController tabController;
  int _selectedItem = 0;
  int _selectedTabIndex = 0;

  //
  // List<BnScreens> _screens = <BnScreens>[
  //   BnScreens(widget: HomeScreen(tabController: tabController), title: 'Home'),
  //   BnScreens(widget: SearchScreen(), title: 'Search'),
  //   BnScreens(widget: FavoriteScreen(), title: 'Favorite'),
  //   BnScreens(widget: ProfileScreen(), title: 'Profile'),
  // ];
  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _searchController.dispose();
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Color(0xFF57CC99),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune_outlined),
          ),
          title: Text(
            'راحتي',
            style: TextStyle(fontFamily: 'ElMessiri'),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/search_screen');
              },
              icon: Icon(Icons.search),
            ),
          ],
          bottom: TabBar(
            onTap: (int selectedTabIndex) {
              setState(() {
                _selectedTabIndex = selectedTabIndex;
              });
            },
            controller: tabController,
            indicatorColor: Color(0xFF57CC99),
            tabs: [
              Tab(
                // text: 'الأطباء',
                child: Text(
                  'الأطباء',
                  style: TextStyle(fontSize: 18, fontFamily: 'ElMessiri'),
                ),
              ),
              Tab(
                // text: 'الأقسام',
                child: Text(
                  'الأقسام',
                  style: TextStyle(fontSize: 18, fontFamily: 'ElMessiri'),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF57CC99),
          type: BottomNavigationBarType.fixed,
          onTap: (int selectedItem) {
            setState(() {
              _selectedItem = selectedItem;
            });
          },
          currentIndex: _selectedItem,
          items: [
            BottomNavigationBarItem(
              activeIcon: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(
                  Icons.home,
                  color: Colors.grey.shade700,
                ),
              ),
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(
                  Icons.date_range_outlined,
                  color: Colors.grey.shade700,
                ),
              ),
              icon: Icon(
                Icons.date_range_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: Colors.grey.shade700,
                ),
              ),
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: '',
            ),
          ],
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 30,
                end: 30,
                top: 10,
              ),
              child: w(),
            ),
          ],
        ),
      ),
    );
  }

  Widget w() {
    List<BnScreens> _screens = <BnScreens>[
      BnScreens(
          widget: HomeScreen(
            tabController: tabController,
            context: context,
          ),
          title: 'Home'),
      BnScreens(widget: DentestScreen(), title: 'Dentest'),
      BnScreens(widget: FavoriteScreen(), title: 'Favorite'),
      BnScreens(widget: ProfileScreen(), title: 'Profile'),
    ];
    return _screens.elementAt(_selectedItem).widget;
  }
}
