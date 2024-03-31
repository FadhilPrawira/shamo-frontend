import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215.0,
        height: 278.0,
        margin: EdgeInsets.only(
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: backgroundColor6,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: defaultMargin,
            ),
            Image.asset(
              'assets/image_shoes.png',
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hiking',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'COURT VISION 2.0 COURT VISION 2.0 COURT VISION 2.0',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 18.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    '\$58.67',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14.0,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
