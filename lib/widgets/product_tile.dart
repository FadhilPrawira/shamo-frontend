import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shamo/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
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
                    'Football',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Predator 20.3 Firm Ground',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    '\$58.76',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14.0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
