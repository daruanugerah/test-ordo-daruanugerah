import 'package:flutter/material.dart';
import 'package:test_ordo/models/riwayat_rebate_model.dart';
import 'package:test_ordo/theme.dart';

class RiwayatRebateWidget extends StatelessWidget {
  final RiwayatRebateModel _riwayatRebateModel;

  RiwayatRebateWidget(this._riwayatRebateModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icon-note.png',
                width: 33,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _riwayatRebateModel.id,
                    style: textStyle.copyWith(
                      fontSize: 13,
                      color: blackColor32,
                    ),
                  ),
                  Text(
                    _riwayatRebateModel.date,
                    style: textStyle.copyWith(
                      fontSize: 10,
                      color: greyColor3,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 26,
            width: 84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: orangeColor,
            ),
            child: Center(
              child: Text(
                _riwayatRebateModel.price,
                style: textStyle.copyWith(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
