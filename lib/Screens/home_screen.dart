import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:my_bank_app/components/user_card.dart';
import 'package:my_bank_app/models/main_services.dart';

import '../colors/color.dart';
import '../components/all_styles.dart';
import '../components/main_services.dart';
import '../components/other_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, this.services}) : super(key: key);
  final MainServices? services;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var scaffKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        key: scaffKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              scaffKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu_sharp,
              size: 30,
              color: AppColor.iconContColors,
            ),
          ),
          centerTitle: true,
          title: Text(
            "My Account",
            style: homeHeaderAppBar,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Icon(
                Icons.power_settings_new,
                size: 30,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: AppColor.background,
          width: 250,
          child: Container(
            child: ListView(
              children: [
                DrawerHeader(
                    child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.close_sharp,
                          size: 35,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      // radius: 35,
                      maxRadius: 40,
                      backgroundImage: AssetImage("images/anisa.jpg"),
                    ),
                    Center(
                      child: Text(
                        "Your last loging was",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColor.iconContColors),
                      ),
                    ),
                    SizedBox(height: 2),
                    Center(
                      child: Text(
                        "22-06-2022 10:55",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColor.iconContColors),
                      ),
                    ),
                  ],
                )),
                ListTile(
                  leading: Icon(Icons.fingerprint),
                  title: Text("YELLOW"),
                )
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            UserCard(),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("Main Services ", style: homeTextMainServiceStyle),
            ),
            // Main Services
            SizedBox(height: 5),
            Container(
              child: AnimationLimiter(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    //childAspectRatio: 1.2,
                  ),
                  itemCount: mainServices.length,
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: Duration(milliseconds: 580),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        //horizontalOffset: 50.0,
                        child: FadeInAnimation(
                          duration: Duration(milliseconds: 580),
                          child: MainService(
                            services: mainServices[index],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("Other Services ", style: homeTextMainServiceStyle),
            ),
            //Other Services
            Container(
              child: AnimationLimiter(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: otherServices.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (_, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 580),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        // horizontalOffset: 50.0,
                        child: FadeInAnimation(
                          duration: Duration(milliseconds: 580),
                          child: OtherService(
                            other: otherServices[index],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
