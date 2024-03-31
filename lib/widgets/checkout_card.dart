import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12.0,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage('assets/image_shoes.png'),
              ),
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
                  'Terrex Urban LowTerrex Urban LowTerrex Urban Low',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  '\$143.98',
                  style: priceTextStyle.copyWith(
                      fontWeight: regular, fontSize: 14.0),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Text(
            '2 Items',
            style: secondaryTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 12.0,
            ),
          )
        ],
      ),
    );
  }
}
