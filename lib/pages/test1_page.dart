import 'package:flutter/material.dart';
import 'package:test_ordo/theme.dart';
import 'package:test_ordo/widgets/catatan_pesanan_widget.dart';
import 'package:test_ordo/widgets/driver_timeline_widget.dart';
import 'package:test_ordo/widgets/driver_widget.dart';
import 'package:test_ordo/widgets/order_item_widget.dart';

class Test1Page extends StatelessWidget {
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
              'assets/icon-note-grey.png',
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
              'assets/icon-home.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-ring-grey.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-profile.png',
              width: 20,
            ),
            label: '',
          ),
        ],
      );
    }

    Widget header() {
      return Container(
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
                    'assets/icon-back-green.png',
                    width: 22,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'LACAK PESANAN',
                  style: textStyle.copyWith(
                    fontSize: 13,
                    fontWeight: semiBold,
                    color: blackColor21,
                  ),
                )
              ],
            ),
            Image.asset(
              'assets/icon-cart.png',
              width: 19,
            ),
          ],
        ),
      );
    }

    Widget maps() {
      return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image-maps.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 60,
            child: Image.asset(
              'assets/image-tracking.png',
              width: 200,
            ),
          )
        ],
      );
    }

    Widget draggableSheet() {
      return Positioned.fill(
        bottom: 0,
        child: DraggableScrollableSheet(
          initialChildSize: 0.28,
          minChildSize: 0.28,
          maxChildSize: 0.5,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff716969).withOpacity(0.25),
                    blurRadius: 7,
                  )
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 9.7),
                  Container(
                    height: 4.31,
                    width: 103.27,
                    color: greenColor11,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: ListView(
                      controller: scrollController,
                      children: [
                        SizedBox(height: 50),
                        DriverWidget(),
                        DriverTimelineWidget(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 19,
                              ),
                              Text(
                                'PESANAN',
                                style: textStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              OrderItemWidget(),
                              OrderItemWidget(),
                              SizedBox(height: 24.43),
                              CatatanPesananWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
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
              child: Stack(
                children: [
                  maps(),
                  draggableSheet(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
