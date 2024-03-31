import 'package:flutter/material.dart';

import 'package:shamo/theme.dart';
import 'package:shamo/widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Image.asset(
            'assets/button_back.png',
            width: 6.0,
            height: 12.0,
          ),
        ),
        title: Text(
          'Your Cart',
          style: primaryTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 18.0,
          ),
        ),
      );
    }

    Widget emptyCard() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80.0,
              height: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Opss! Your Cart is Empty',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 14.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20.0,
              ),
              width: 154.0,
              height: 44.0,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16.0,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          CartCard(),
          CartCard(),
        ],
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 180.0,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    '\$287.96',
                    style: priceTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Divider(
              thickness: 1,
              color: dividerColor1,
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      // body: emptyCard(),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
