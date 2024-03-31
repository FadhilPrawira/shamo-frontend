import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Row(
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
                      'Terrex Urban LowTerrex Urban LowTerrex Urban LowTerrex Urban LowTerrex Urban Low',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      '\$143.98',
                      style: priceTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 14.0,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/button_add.png',
                    width: 16.0,
                    height: 16.0,
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Image.asset(
                    'assets/button_min.png',
                    width: 16.0,
                    height: 16.0,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_remove.png',
                width: 10.0,
                height: 12.0,
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
