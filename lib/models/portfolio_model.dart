import 'package:equatable/equatable.dart';

class PortfolioModel extends Equatable {
  final String imageUrl;
  final String star;
  final String name;

  PortfolioModel({
    this.imageUrl,
    this.star,
    this.name,
  });

  @override
  List<Object> get props => [imageUrl, star, name];
}

List<PortfolioModel> mockPortfolio = [
  PortfolioModel(
    imageUrl: 'assets/image-2.png',
    star: '4.5',
    name: 'Budi Haryanto'
  ),
  PortfolioModel(
    imageUrl: 'assets/image-3.png',
    star: '5.0',
    name: 'Tian Nugraha'
  ),
  PortfolioModel(
    imageUrl: 'assets/image-2.png',
    star: '4.7',
    name: 'Salsabila'
  ),
  PortfolioModel(
    imageUrl: 'assets/image-1.png',
    star: '3.2',
    name: 'Maryadi'
  ),
  PortfolioModel(
    imageUrl: 'assets/image-3.png',
    star: '4.8',
    name: 'Misbahkun'
  ),
  PortfolioModel(
    imageUrl: 'assets/image-2.png',
    star: '5.0',
    name: 'James Riyadi'
  ),
  PortfolioModel(
    imageUrl: 'assets/image-2.png',
    star: '5.0',
    name: 'Riyanto'
  ),
  PortfolioModel(
    imageUrl: 'assets/image-1.png',
    star: '5.0',
    name: 'Agus Salim'
  ),
  PortfolioModel(
    imageUrl: 'assets/image-3.png',
    star: '4.0',
    name: 'Mamat Alkatiri'
  ),
  PortfolioModel(
    imageUrl: 'assets/image-1.png',
    star: '4.0',
    name: 'Rossi'
  ),
];
