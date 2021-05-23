import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyExample(),
    );
  }
}

class MyExample extends StatefulWidget {
  @override
  _MyExampleState createState() => _MyExampleState();
}

class _MyExampleState extends State<MyExample> {
  int _selectedIndex = 0; //default index

  List<Widget> _widgetOptions = [
    Text('Home'),
    Text('Account'),
    Text('Leaves'),
    Text('Loyalty'),
    Text('Requests'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.white,
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        gradient: LinearGradient(
          colors: [Colors.pink, Colors.yellow],
        ),
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.account_box_outlined,
          ),
          CustomBottomBarItems(
              label: 'Leaves', icon: Icons.calendar_today_outlined),
          CustomBottomBarItems(
            label: 'Loyalty',
            icon: Icons.card_giftcard_rounded,
          ),
          CustomBottomBarItems(
            label: 'Requests',
            icon: Icons.list,
          ),
        ],
      ),
    );
  }
}
