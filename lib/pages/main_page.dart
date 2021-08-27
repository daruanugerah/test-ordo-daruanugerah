import 'package:flutter/material.dart';
import 'package:test_ordo/pages/test3_page.dart';
import 'package:test_ordo/theme.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefefe),
      body: Container(
        padding: EdgeInsets.only(
          top: 179,
          left: 50,
          right: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Made by',
                style: textStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Daru Anugerah Setiawan',
              style: textStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 107,
            ),
            Container(
              height: 58,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ),
                ),
                child: Text(
                  'Test 1',
                  style: textStyle.copyWith(
                    color: Colors.white,
                    fontWeight: semiBold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              height: 58,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ),
                ),
                child: Text(
                  'Test 2',
                  style: textStyle.copyWith(
                    color: Colors.white,
                    fontWeight: semiBold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              height: 58,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Test3Page(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ),
                ),
                child: Text(
                  'Test 3',
                  style: textStyle.copyWith(
                    color: Colors.white,
                    fontWeight: semiBold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
