import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/widget/container_gradiente.dart';
import 'package:portfolio_giovane/app/core/feature/content_main.dart';
import 'package:portfolio_giovane/app/core/widget/build_sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();

  final GlobalKey section1 = GlobalKey();
  final GlobalKey section2 = GlobalKey();
  final GlobalKey section3 = GlobalKey();
  final GlobalKey section4 = GlobalKey();
  final GlobalKey section5 = GlobalKey();
  final GlobalKey section6 = GlobalKey();

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ContainerGradiente(
            width: 256,
            child: Column(
              children: [
                NavSideBar(
                  scrollToSection: scrollTo,
                  section1: section1,
                  section2: section2,
                  section3: section3,
                  section4: section4,
                  section5: section5,
                  section6: section6,
                ),
              ],
            ),
          ),
          Expanded(
            child: ContentMain(
              section1: section1,
              section2: section2,
              section3: section3,
              section4: section4,
              section5: section5,
              section6: section6,
              scrollController: scrollController,
            ),
          ),
        ],
      ),
    );
  }
}
