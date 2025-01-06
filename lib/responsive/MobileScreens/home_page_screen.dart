import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_search_clone/responsive/MobileScreens/mobile_footer.dart';

import '../../colors.dart';
import '../WebScreens/search_buttons.dart';
import '../WebScreens/search_ui_view.dart';
import '../WebScreens/translation_view.dart';
import '../WebScreens/web_footer.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        title: SizedBox(
          width: size.width*0.34,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: blueColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: blueColor,
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Images'),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: primaryColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0).copyWith(right: 10),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xff1A73EB),
              child: const Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SearchUiView(),
                      SizedBox(
                        height: 20,
                      ),
                      SearchButtons(),
                      SizedBox(
                        height: 20,
                      ),
                      TranslationView()
                    ],
                  ),
                  MobileFooter()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
