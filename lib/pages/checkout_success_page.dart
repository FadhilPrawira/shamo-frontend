import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Checkout Success',
          style: primaryTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 18.0,
          ),
        ),
        backgroundColor: backgroundColor1,
      );
    }

    Widget content() {
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
              'You made a transaction',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Stay at home while we\nprepare your dream shoes',
              style: secondaryTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 196.0,
              height: 44.0,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                  ),
                ),
                child: Text(
                  'Order Other Shoes',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Container(
              width: 196.0,
              height: 44.0,
              margin: EdgeInsets.only(
                top: 12.0,
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff39374B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                  ),
                ),
                child: Text(
                  'View My Order',
                  style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16.0,
                      color: Color(0xffB7B6BF)),
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
      body: content(),
    );
  }
}
