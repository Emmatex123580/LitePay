import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:litepay/presentation/airtime_screen.dart';
import 'package:litepay/presentation/fund_wallet_automated_bank.dart';
import 'package:litepay/presentation/home_screen_page.dart';
import 'package:litepay/presentation/notification_one_screen.dart';
import 'package:litepay/presentation/sign_in_screen.dart';
import 'core/app_export.dart';
import 'core/size_utils.dart';
import 'routes/app_routes.dart';
import 'theme/theme_helper.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'litepay',
          debugShowCheckedModeBanner: false,
          //initialRoute: AppRoutes.splashScreen,   //it was AppRoutes.signInScreen or AppRoutes.splashScreen
          routes: AppRoutes.routes,
          home:   FundWalletAutomatedBank()//HomePage()
        );
      }
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreenPage(),
    NotificationOneScreen(),  // Replace with your home page widget
    Text('Search Page'),  // Replace with your search page widget
    Text('Profiles Page'),  // Replace with your profile page widget
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.notifications_outlined),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/img_nav_referrals.svg",
              width: 20,
              height: 20,
              color: (_selectedIndex == 2) ? Color(0XFF9B03D0) : Colors.grey
            
            ),
            label: 'Referrals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0XFF9B03D0),
        iconSize: 20,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        elevation: 10.0,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
