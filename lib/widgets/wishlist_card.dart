import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shamo/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
      ),
      padding: EdgeInsets.only(
        top: 10.0,
        left: 12.0,
        bottom: 14.0,
        right: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              12.0,
            ),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 60.0,
              height: 60.0,
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  '\$143.98',
                  style: priceTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/button_wishlist_blue.png',
            width: 34.0,
            height: 34.0,
          ),
        ],
      ),
    );
  }
}
