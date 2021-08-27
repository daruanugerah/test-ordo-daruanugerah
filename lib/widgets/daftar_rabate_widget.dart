import 'package:flutter/material.dart';
import 'package:test_ordo/models/daftar_rebate_model.dart';
import 'package:test_ordo/theme.dart';

class DaftarRebateWidget extends StatelessWidget {
  final DaftarRebateModel _daftarRebateModel;

  DaftarRebateWidget(this._daftarRebateModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17),
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ID Transaksi',
                style: textStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                  color: disableColor3,
                ),
              ),
              Text(
                _daftarRebateModel.id,
                style: textStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                  color: greenColor32,
                ),
              ),
            ],
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rebate',
                style: textStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                  color: disableColor3,
                ),
              ),
              Text(
                _daftarRebateModel.rebate,
                style: textStyle.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: greenColor31,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tanggal',
                style: textStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                  color: disableColor3,
                ),
              ),
              Text(
                _daftarRebateModel.date,
                style: textStyle.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: greenColor31,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
