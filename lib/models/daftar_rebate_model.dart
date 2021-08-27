import 'package:equatable/equatable.dart';

class DaftarRebateModel extends Equatable {
  final String id;
  final String rebate;
  final String date;

  DaftarRebateModel({
    this.id,
    this.rebate,
    this.date,
  });

  @override
  List<Object> get props => [id, rebate, date];
}

List<DaftarRebateModel> mockDaftarRebate = [
  DaftarRebateModel(
    id: '#EC1201211',
    rebate: 'Rp. 150.000',
    date: '14 Juli 2021',
  ),
  DaftarRebateModel(
    id: '#EC1241511',
    rebate: 'Rp. 130.000',
    date: '15 Juli 2021',
  ),
  DaftarRebateModel(
    id: '#EC1321661',
    rebate: 'Rp. 150.000',
    date: '15 Juli 2021',
  ),
  DaftarRebateModel(
    id: '#EC1201211',
    rebate: 'Rp. 150.000',
    date: '17 Juli 2021',
  ),
  DaftarRebateModel(
    id: '#EC1201211',
    rebate: 'Rp. 150.000',
    date: '18 Juli 2021',
  ),
];
