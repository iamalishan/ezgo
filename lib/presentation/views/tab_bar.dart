import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/views/bookings_cancelled_view.dart';
import 'package:ez_go_final/presentation/views/bookings_complete_view.dart';
import 'package:ez_go_final/presentation/views/bookings_upcoming_view.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1.5,
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Color(0xffF51C17),
              labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
              tabs: [
                Tab(text: 'Upcoming',),
                Tab(text: 'Complete',),
                Tab(text: 'Cancelled'),
              ],
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Booster.dynamicFontSize(
                  label: 'Bookings',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          body: TabBarView(
            children: [
             BookingsUpcoming(),
              BookingsComplete(),
              BookingsCanceled(),
            ],
          ),
        ),
      ),
    );
  }
}

