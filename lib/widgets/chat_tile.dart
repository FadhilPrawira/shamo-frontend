import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  height: 54.0,
                  width: 54.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        'Good night, This item is on...',
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 14.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 10.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Divider(
              thickness: 1.0,
              color: dividerColor1,
            ),
          ],
        ),
      ),
    );
  }
}
