import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:test_ordo/models/portfolio_model.dart';
import 'package:test_ordo/theme.dart';
import 'package:test_ordo/widgets/portfolio_card_widget.dart';

class Test2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bottomNavBar() {
      return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-reader.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-swap.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-move.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-graph-grey.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-helmet.png',
              width: 20,
            ),
            label: '',
          ),
        ],
      );
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 18,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 29,
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icon-back-black.png',
                    width: 22,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'PORTFOLIO VENDOR',
                  style: textStyle.copyWith(
                    fontSize: 13,
                    fontWeight: semiBold,
                    color: blackColor21,
                  ),
                )
              ],
            ),
            Image.asset(
              'assets/icon-ring.png',
              width: 18,
            ),
          ],
        ),
      );
    }

    Widget profile() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 13,
          right: 19,
          left: 19,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFF5F558B), width: 1),
              ),
              child: Stack(
                children: [
                  SpinKitFadingCircle(
                    color: Color(0xffC7C7CC),
                    size: 96,
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/image-profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '5.0',
                        style: textStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: blackColor22,
                        ),
                      ),
                      Text(
                        'Rating',
                        style: textStyle.copyWith(
                          fontSize: 13,
                          color: blackColor22,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '100',
                        style: textStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: blackColor22,
                        ),
                      ),
                      Text(
                        'Review',
                        style: textStyle.copyWith(
                          fontSize: 13,
                          color: blackColor22,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '162',
                        style: textStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: blackColor22,
                        ),
                      ),
                      Text(
                        'Pesanan',
                        style: textStyle.copyWith(
                          fontSize: 13,
                          color: blackColor22,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget bio() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 20,
          right: 19,
          left: 19,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dina Florist',
              style: textStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: blackColor22,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Toko Bunga terbaiks se Indonesia Raya\nHarga Murah Produk Berkualitas',
              style: textStyle.copyWith(
                fontSize: 12,
                color: blackColor22,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 35,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: Color(0xff3C3C43).withOpacity(0.18),
                    )),
                onPressed: () {},
                child: Center(
                  child: Text(
                    'PORTFOLIO',
                    style: textStyle.copyWith(
                      color: blackColor22,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget grid() {
      return Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(
          right: 19,
          left: 19,
          bottom: 20,
        ),
        child: GridView.count(
          physics: ScrollPhysics(),
          crossAxisCount: 3,
          children: List.generate(
            mockPortfolio.length,
            (index) => PorrtfolioCardWidget(mockPortfolio[index]),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            header(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  profile(),
                  bio(),
                  grid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
