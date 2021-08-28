import 'package:flutter/material.dart';
import 'package:test_ordo/theme.dart';

class OrderItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 79,
                    width: 79,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 15,
                        )
                      ],
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/image-strawberry.png',
                        width: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Strawberry',
                        style: textStyleInter.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '100 Gram',
                        style: textStyleInter.copyWith(
                          fontSize: 11,
                          color: disableColor1,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Rp 75.000',
                        style: textStyle.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: greenColor11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '2 Item',
                    style: textStyleInter.copyWith(
                      fontWeight: semiBold,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Catatan Item',
            style: textStyle.copyWith(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
            'incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .',
            style: textStyle.copyWith(
              fontSize: 10,
              color: textColor1,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
    );
  }
}
