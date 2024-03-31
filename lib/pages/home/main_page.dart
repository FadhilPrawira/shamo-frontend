import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/pages/home/wishlist_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20.0,
          height: 22.0,
        ),
        shape: CircleBorder(),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.0),
        ),
        child: BottomAppBar(
          padding: EdgeInsets.only(),
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20.0,
                    bottom: 5.0,
                  ),
                  child: Image.asset(
                    'assets/icon_home.png',
                    width: 21.0,
                    height: 20.0,
                    color: currentIndex == 0 ? primaryColor : tertiaryColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20.0,
                    bottom: 5.0,
                  ),
                  child: Image.asset(
                    'assets/icon_chat.png',
                    width: 20.0,
                    height: 17.46,
                    color: currentIndex == 1 ? primaryColor : tertiaryColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20.0,
                    bottom: 5.0,
                  ),
                  child: Image.asset(
                    'assets/icon_wishlist.png',
                    width: 20.0,
                    height: 18.0,
                    color: currentIndex == 2 ? primaryColor : tertiaryColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20.0,
                    bottom: 5.0,
                  ),
                  child: Image.asset(
                    'assets/icon_profile.png',
                    width: 18.0,
                    height: 20.0,
                    color: currentIndex == 3 ? primaryColor : tertiaryColor,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();

        case 1:
          return ChatPage();

        case 2:
          return WishlistPage();

        case 3:
          return ProfilePage();

        default:
          return HomePage();
      }
    }

    return Scaffold(
      extendBody: true,
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
