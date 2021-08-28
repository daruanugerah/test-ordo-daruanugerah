import 'package:flutter/material.dart';
import 'package:test_ordo/theme.dart';

class DriverTimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icon-clock.png',
                width: 24,
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Status',
                    style: textStyle.copyWith(
                      color: greenColor11,
                    ),
                  ),
                  Text(
                    'Sedang mengambil barang',
                    style: textStyle.copyWith(
                      color: blackColor11,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 24,
            child: Icon(
              Icons.circle,
              size: 4,
              color: Color(0xff898EBC).withOpacity(0.25),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 24,
            child: Icon(
              Icons.circle,
              size: 5,
              color: Color(0xff898EBC).withOpacity(0.5),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 24,
            child: Icon(
              Icons.circle,
              size: 6,
              color: Color(0xff898EBC).withOpacity(0.75),
            ),
          ),
           Row(
            children: [
              Image.asset(
                'assets/icon-marker.png',
                width: 24,
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alamat Anda',
                    style: textStyle.copyWith(
                      color: greenColor11,
                    ),
                  ),
                  Text(
                    'Taman Indah Dago No. 612',
                    style: textStyle.copyWith(
                      color: blackColor11,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
