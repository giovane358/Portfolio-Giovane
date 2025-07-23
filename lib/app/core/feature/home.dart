// home_page.dart
import 'package:flutter/material.dart';
import 'package:portfolio_giovane/app/core/colors/colors.dart';
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

  bool showOverlaySidebar = false;
  String activeSection = 'section1';

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  void scrollTo(GlobalKey key, String sectionName) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      setState(() {
        activeSection = sectionName;
      });
    }

    if (showOverlaySidebar) {
      setState(() {
        showOverlaySidebar = false;
      });
    }
  }

  void _onScroll() {
    final screenHeight = MediaQuery.of(context).size.height;
    final sections = {
      'section1': section1,
      'section2': section2,
      'section3': section3,
      'section4': section4,
      'section5': section5,
      'section6': section6,
    };

    for (var entry in sections.entries) {
      final keyContext = entry.value.currentContext;
      if (keyContext != null) {
        final box = keyContext.findRenderObject() as RenderBox;
        final offset = box.localToGlobal(Offset.zero).dy;
        if (offset >= 0 && offset < screenHeight * 0.5) {
          if (activeSection != entry.key) {
            setState(() {
              activeSection = entry.key;
            });
          }
          break;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool isWideScreen = constraints.maxWidth > 800;

          if (isWideScreen) {
            return Row(
              children: [
                ContainerGradiente(
                  width: 256,
                  child: NavSideBar(
                    scrollToSection: (key) =>
                        scrollTo(key, _getSectionName(key)),
                    section1: section1,
                    section2: section2,
                    section3: section3,
                    section4: section4,
                    section5: section5,
                    section6: section6,
                    activeSection: activeSection,
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
            );
          } else {
            return Stack(
              children: [
                ContentMain(
                  section1: section1,
                  section2: section2,
                  section3: section3,
                  section4: section4,
                  section5: section5,
                  section6: section6,
                  scrollController: scrollController,
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: IconButton(
                    icon: Image.asset('lib/app/core/images/menu.png'),
                    iconSize: 32,
                    color: AppColors.pingText,
                    onPressed: () {
                      setState(() {
                        showOverlaySidebar = true;
                      });
                    },
                  ),
                ),
                if (showOverlaySidebar)
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          showOverlaySidebar = false;
                        });
                      },
                      child: Container(
                        color: Colors.black54,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: ContainerGradiente(
                            width: 256,
                            child: NavSideBar(
                              scrollToSection: (key) =>
                                  scrollTo(key, _getSectionName(key)),
                              section1: section1,
                              section2: section2,
                              section3: section3,
                              section4: section4,
                              section5: section5,
                              section6: section6,
                              activeSection: activeSection,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          }
        },
      ),
    );
  }

  String _getSectionName(GlobalKey key) {
    if (key == section1) return 'section1';
    if (key == section2) return 'section2';
    if (key == section3) return 'section3';
    if (key == section4) return 'section4';
    if (key == section5) return 'section5';
    return 'section6';
  }
}
