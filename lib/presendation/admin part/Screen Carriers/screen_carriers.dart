import 'package:emart/presendation/admin%20part/Screen%20Carriers/widgets/carriers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constands/colors.dart';

class ScreenCarriers extends StatelessWidget {
  ScreenCarriers({super.key});
  final List<Widget> _tabs = [Text('Requests'), Text('Carriers')];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DefaultTabController(
        length: 2,
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
                tabs: _tabs),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: TabBarView(children: [Carriers(), Carriers()]),
            )),
          ],
        ),
      ),
    );
  }
}
