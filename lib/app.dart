import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_bar/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyAppPage extends StatelessWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('FlutterBottomNav'),
        centerTitle: true,
        leading: AutoLeadingButton(showIfParentCanPop: true, builder: (context, leadingType, action) => IconButton(
          onPressed: ()  {
            context.router.navigateBack();
          },
          icon: const Icon(Icons.chevron_left),
        ),),
      ),
      backgroundColor: Colors.indigo,
      routes: const [
        HomeRoute(),
        ListRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              title: const Text('Home'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(
                Icons.post_add,
                size: 30,
              ),
              title: const Text('List'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blue[200],
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              title: const Text('Profile'),
            ),
          ],
        );
      },
    );
  }
}
