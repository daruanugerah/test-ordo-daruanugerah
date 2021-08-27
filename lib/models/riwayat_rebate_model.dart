import 'package:equatable/equatable.dart';

class RiwayatRebateModel extends Equatable {
  final String id;
  final String date;
  final String price;

  RiwayatRebateModel({
    this.id,
    this.date,
    this.price,
  });

  @override
  List<Object> get props => [id, date, price];
}

List<RiwayatRebateModel> mockRiwayatRebate = [
  RiwayatRebateModel(
    id: '#REBATEC12021',
    date: '20 Juli 2021',
    price: 'Rp 150.000',
  ),
  RiwayatRebateModel(
    id: '#REBATEC12021',
    date: '20 Juli 2021',
    price: 'Rp 150.000',
  ),
  RiwayatRebateModel(
    id: '#REBATEC12021',
    date: '20 Juli 2021',
    price: 'Rp 150.000',
  ),
  RiwayatRebateModel(
    id: '#REBATEC12021',
    date: '20 Juli 2021',
    price: 'Rp 150.000',
  ),
];
