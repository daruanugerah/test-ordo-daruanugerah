import 'package:flutter/material.dart';
import 'package:test_ordo/models/daftar_rebate_model.dart';
import 'package:test_ordo/models/riwayat_rebate_model.dart';
import 'package:test_ordo/theme.dart';
import 'package:test_ordo/widgets/daftar_rabate_widget.dart';
import 'package:test_ordo/widgets/riwayat_rebate_widget.dart';

class Test3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bottomNavBar() {
      return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-home-3.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-calendar-3.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon-restore.png',
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
          bottom: 10,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 29,
          vertical: 26,
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
                    'assets/icon-back-orange.png',
                    width: 20,
                  ),
                ),
                SizedBox(
                  width: 22,
                ),
                Text(
                  'FINANSIAL',
                  style: textStyle.copyWith(
                    fontSize: 13,
                    fontWeight: semiBold,
                    color: Color(0xff545454),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icon-graph.png',
                  width: 18,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/icon-ring-notif.png',
                  width: 24,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget totalBonus() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 23,
          horizontal: 30,
        ),
        margin: EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 15,
        ),
        height: 103,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 40,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TOTAL BONUS',
              style: textStyle.copyWith(
                fontSize: 13,
                fontWeight: semiBold,
                color: orangeColor,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Rp 5.000.000,00',
              style: textStyle.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: blackColor31,
              ),
            ),
          ],
        ),
      );
    }

    Widget pendingBonus() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 23,
          horizontal: 30,
        ),
        margin: EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 15,
        ),
        height: 103,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 40,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PENDING BONUS',
              style: textStyle.copyWith(
                fontSize: 13,
                fontWeight: semiBold,
                color: orangeColor,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Rp 50.000.000,00',
              style: textStyle.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: blackColor31,
              ),
            ),
          ],
        ),
      );
    }

    Widget daftarRebate() {
      return Container(
        margin: EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 17,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daftar Rebate',
                    style: textStyle.copyWith(
                      fontSize: 13,
                      color: disableColor3,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 26,
                        width: 77.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: orangeColor,
                        ),
                        child: Center(
                          child: Text(
                            'Semua',
                            style: textStyle.copyWith(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 26,
                        width: 77.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: blueColor3,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Filter',
                              style: textStyle.copyWith(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: medium,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Image.asset(
                              'assets/icon-option.png',
                              width: 7.5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Color(0xffBBBBBB),
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: mockDaftarRebate.length,
              itemBuilder: (context, index) => DaftarRebateWidget(
                mockDaftarRebate[index],
              ),
            ),
          ],
        ),
      );
    }

    Widget riwayatRebate() {
      return Container(
        margin: EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 100,
        ),
        padding: EdgeInsets.only(
          right: 11,
          left: 11,
          top: 15,
          bottom: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Riwayat Rebate',
              style: textStyle.copyWith(
                fontSize: 13,
                fontWeight: semiBold,
                color: orangeColor,
              ),
            ),
            SizedBox(
              height: 19,
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: mockRiwayatRebate.length,
              itemBuilder: (context, index) => RiwayatRebateWidget(
                mockRiwayatRebate[index],
              ),
            ),
          ],
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
                children: [
                  totalBonus(),
                  pendingBonus(),
                  daftarRebate(),
                  riwayatRebate(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        height: 53,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color(0xff53B2FC),
              Color(0xff127CCE),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text(
                'Complain',
                style: textStyle.copyWith(
                  color: Colors.white,
                  fontWeight: semiBold,
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
