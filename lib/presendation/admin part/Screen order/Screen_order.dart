import 'package:emart/presendation/admin%20part/Screen%20order/widget/Non_active.dart';
import 'package:emart/presendation/admin%20part/Screen%20order/widget/active_order.dart';
import 'package:emart/presendation/admin%20part/Screen%20order/widget/complt_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constands/colors.dart';

class ScreenOrder extends StatelessWidget {
  ScreenOrder({super.key});
  final List<Widget> ordertabs = [
    const Center(child: Text('Non Active')),
    const Center(child: Text('Active')),
    const Center(child: Text('Completed')),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
                unselectedLabelStyle: const TextStyle(
                  fontSize: 16,
                ),
                unselectedLabelColor: cgrey,
                labelPadding: const EdgeInsets.all(10),
                labelStyle:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                indicatorColor: cblack,
                labelColor: cblack,
                tabs: ordertabs),
            const Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: TabBarView(children: [
                NonActive(),
                ActiveOrdersAdmin(),
                CompletedOrdersadmin(),
              ]),
            )),
          ],
        ),
      ),
    );
  }
}
