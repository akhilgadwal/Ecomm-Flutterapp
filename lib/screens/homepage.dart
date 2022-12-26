import 'package:card_swiper/card_swiper.dart';
import 'package:ecomm/screens/catscreen.dart';
import 'package:ecomm/screens/feeds.dart';
import 'package:ecomm/screens/userscreen.dart';
import 'package:ecomm/widgets/buttons.dart';
import 'package:ecomm/widgets/feeds.dart';
import 'package:ecomm/widgets/sales_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //controller
  late TextEditingController _textEditingController;
  //initstate
  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

//disposing to prevent data leak
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
          ),
          leading: MyAppBarIcon(
            function: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const CategorieScreen(),
                      type: PageTransitionType.fade));
            },
            icon: IconlyBold.category,
          ),
          actions: [
            MyAppBarIcon(
                function: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const UserScreen(),
                          type: PageTransitionType.fade));
                },
                icon: IconlyBold.user_3)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  //txtcontroller
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.purple,
                      ),
                    ),
                    suffixIcon: Icon(IconlyLight.search),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: size.height * 0.25,
                      child: Swiper(
                        itemCount: 3,
                        itemBuilder: ((context, index) {
                          return const SalesWid();
                        }),
                        pagination: const SwiperPagination(
                          alignment: Alignment.bottomCenter,
                          builder: DotSwiperPaginationBuilder(
                              activeColor: Colors.red),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Latest Models',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        MyAppBarIcon(
                            function: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: DetailScreens(),
                                ),
                              );
                            },
                            icon: IconlyBold.arrow_right),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // const SizedBox(width: 160, child: FeedsWidget()),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 0.0,
                            childAspectRatio: 0.6),
                        itemBuilder: ((context, index) {
                          return const FeedsWidget();
                        }))
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
