import 'package:flutter/material.dart';
import 'package:machine/view/AnimationPage.dart';
import 'package:machine/view/homePage.dart';
import 'package:machine/view/settings.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final maincolor = const Color(0xff181c27);
  int selected = 0;

  void indexvalue(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const AnimationPage(),
      const SettingsPage()
    ];
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selected],
      bottomNavigationBar: 
      
      
      
      
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.w)
        ),
        
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_fire_department_rounded),
                label: 'Animation',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.white,
              ),
            ],
            currentIndex: selected,
            selectedItemColor: Colors.black,
            onTap: indexvalue,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            iconSize: screenwidth * 0.07,
            selectedFontSize: 13.sp,
          ),
        ),
      
    );
  }
}
