import 'package:flutter/material.dart';
import 'package:test_ordo/theme.dart';

class CatatanPesananWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Catatan Pesanan',
          style: textStyle.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
          'incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .',
          style: textStyle.copyWith(
            fontSize: 11,
            color: textColor1,
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
