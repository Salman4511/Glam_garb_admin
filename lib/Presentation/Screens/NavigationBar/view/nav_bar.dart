import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glam_garb_admin/Presentation/Screens/dashboard/view/dashboard.dart';
import 'package:glam_garb_admin/Presentation/Screens/Orders/order_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/Product/product_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/SalesReport/sales_report.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/menu_screen.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class navPage extends StatefulWidget {
  @override
  _navPageState createState() => _navPageState();
}

class _navPageState extends State<navPage> {
  // a variable to store the current selected tab. can be used to control PageView
  int _selectedIndex = 0;

  // PageController to control the pages
  PageController _pageController = PageController(initialPage: 0);

  // Define your pages
  final List<Widget> _pages = [
    const DashBoard(),
    const SalesReport(),
    const ProductScreen(),
    const OrderScreen(),
    MenuScreen(), // Replace with your actual page widget
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        // primaryColor: Colors.deepPurple[400],
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          cardColor: Colors.white,
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
          controller: _pageController,
          children: _pages,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        // backgroundColor: Colors.deepPurple[400],
        // you can use the molten bar in the scaffold's bottomNavigationBar
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: MoltenBottomNavigationBar(
            selectedIndex: _selectedIndex,
            domeHeight: 25,

            borderRaduis: BorderRadius.circular(85),

            // specify what will happen when a tab is clicked
            onTabChange: (clickedIndex) {
              setState(() {
                _selectedIndex = clickedIndex;
              });
              _pageController.animateToPage(
                clickedIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
            // ansert as many tabs as you like
            tabs: [
              MoltenTab(
                icon: const Icon(
                  Icons.home,
                  size: 35,
                ),
              ),
              MoltenTab(
                icon: const Icon(
                  Icons.data_saver_off_rounded,
                  size: 35,
                ),
                // title: Text('home'),
              ),
              MoltenTab(
                icon: Icon(
                  FontAwesomeIcons.bagShopping,
                  size: 35,
                ),
              ),
              MoltenTab(
                icon: Icon(Icons.shopping_cart_rounded, size: 35),
                // title: Text('home'),
              ),
              MoltenTab(
                icon: Icon(
                  Icons.menu,
                  size: 40,
                ),
                // title: Text('home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
