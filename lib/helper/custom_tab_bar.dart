import 'package:eccomerce/helper/custom_gridhome.dart';
import 'package:flutter/material.dart';

class Custom_Tab_Bar extends StatefulWidget {
  const Custom_Tab_Bar({
    super.key,
  });

  @override
  State<Custom_Tab_Bar> createState() => _Custom_Tab_BarState();
}

class _Custom_Tab_BarState extends State<Custom_Tab_Bar>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    print(_tabController.animation);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          // isScrollable: true,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: 'Lentil',
            ),
            Tab(
              text: 'Rice',
            ),
            Tab(
              text: 'Oil',
            ),
          ],
        ),

        Container(
          height: 600,
          // color: Colors.red,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Custom_Grid(
                // axisDirection: Axis.vertical,
                crossAxisCount: 2,
                childAspectRatio: 20 / 33,
                mainAxisSpacing: 11,
                crossAxisSpacing: 10, axisDirection: Axis.vertical,
              ),
              Custom_Grid(
                // axisDirection: Axis.vertical,
                crossAxisCount: 2,
                childAspectRatio: 20 / 33,
                mainAxisSpacing: 11,
                crossAxisSpacing: 10, axisDirection: Axis.vertical,
              ),
              Custom_Grid(
                // axisDirection: Axis.vertical,
                crossAxisCount: 2,
                childAspectRatio: 20 / 33,
                mainAxisSpacing: 11,
                crossAxisSpacing: 10, axisDirection: Axis.vertical,
              ),
            ],
          ),
        ),
        // TabBar(tabs: tabs, controller: ,),
        // DefaultTabController(
        //   initialIndex: 1,
        //   length: 3,
        //   child: TabBar(
        //     tabs: <Widget>[
        //       Tab(
        //         text: 'Lentil',
        //       ),
        //       Tab(
        //         text: 'Rice',
        //       ),
        //       Tab(
        //         text: 'Oil',
        //       ),
        //     ],
        //   ),
        // ),
        // TabBarView(
        //   controller:
        //   children: <Widget>[
        //     Text('Hello'),
        //     Text('Arnav'),
        //     Text('How Are You?'),
        //   ],
        // ),
      ],
    );
  }
}
