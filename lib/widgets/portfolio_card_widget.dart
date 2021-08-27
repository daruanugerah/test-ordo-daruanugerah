import 'package:flutter/material.dart';
import 'package:test_ordo/models/portfolio_model.dart';
import 'package:test_ordo/theme.dart';

class PorrtfolioCardWidget extends StatelessWidget {
  final PortfolioModel _portfolioModel;

  PorrtfolioCardWidget(this._portfolioModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Image.asset(_portfolioModel.imageUrl),
          Positioned(
            top: 5,
            right: 5,
            child: Container(
              width: 38,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff202237),
                    Color(0xff595FA0),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffDFB300),
                    size: 11,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    _portfolioModel.star,
                    style: textStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 5),
              height: 20,
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(0.41),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  _portfolioModel.name,
                  style: textStyle.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
