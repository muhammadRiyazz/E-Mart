import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/screen%20order/widgets/active_order_view.dart';
import 'package:emart/presendation/screen%20order/widgets/completed_order_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenOrders extends StatelessWidget {
  ScreenOrders({super.key});
  final List<Widget> tabs = [
    const Center(child: Text('Active')),
    const Center(child: Text('Completed')),
  ];
  final List<Widget> tabviews = [ActiveOrders(), CompletedOrders()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Orders',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            DefaultTabController(
              length: 2,
              child: Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TabBar(
                          unselectedLabelStyle: TextStyle(
                            fontSize: 16,
                          ),
                          unselectedLabelColor: cgrey,
                          labelPadding: EdgeInsets.all(10),
                          labelStyle: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                          tabs: tabs,
                          indicatorColor: cblack,
                          labelColor: cblack),
                    ),
                    Expanded(
                      child: TabBarView(
                          physics: BouncingScrollPhysics(), children: tabviews),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
