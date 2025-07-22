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

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    // Fecha o sidebar ao clicar em um item (em modo mobile)
    if (showOverlaySidebar) {
      setState(() {
        showOverlaySidebar = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool isWideScreen = constraints.maxWidth > 600;

          if (isWideScreen) {
            // Layout com sidebar fixo
            return Row(
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
            );
          } else {
            // Layout com conteúdo principal + menu sobreposto via botão
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
}
