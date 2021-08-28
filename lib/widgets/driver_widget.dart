import 'package:flutter/material.dart';
import 'package:test_ordo/theme.dart';

class DriverWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27),
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/image-line-half.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/image-profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'David Morel',
                    style: textStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: blackColor11,
                    ),
                  ),
                  Text(
                    'B 1201 FA',
                    style: textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: greenColor12,
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            height: 77,
            width: 77,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xff3AB648),
                  Color(0xff526430),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 30,
                  offset: Offset(0, 10),
                  color: Color(0xff4E60FF).withOpacity(0.25),
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                'assets/icon-message.png',
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
