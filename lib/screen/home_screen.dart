import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rapido_app_clone/screen/search_screen.dart';
import 'package:rapido_app_clone/utils/custom_text_style.dart';
import 'package:rapido_app_clone/widgets/myExploreCard.dart';
import 'package:rapido_app_clone/widgets/my_save_more_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// here we create list image to shoe auto image slider
  List<Widget> bannerImage = [
    Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.blue),
          image: const DecorationImage(
              image: AssetImage(
                "assets/image/rapido banner 2.png",
              ),
              fit: BoxFit.cover)),
    ),
    Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.blue),
          image: const DecorationImage(
              image: AssetImage(
                "assets/image/rapido banner 3.png",
              ),
              fit: BoxFit.cover)),
    ),
    Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.blue),
          image: const DecorationImage(
              image: AssetImage(
                "assets/image/rapido poster 1.png",
              ),
              fit: BoxFit.cover)),
    ),
  ];

  /// Image and title list
  List<Map<String, dynamic>> data = [
    {"image": "assets/image/parcel.png", "title": "Parcel"},
    {"image": "assets/image/auto.png", "title": "Auto"},
    {"image": "assets/image/cab economy.png", "title": "Cab Economy"},
    {"image": "assets/image/motorbike.png", "title": "Bike"},
    {"image": "assets/image/lite bike.png", "title": "Lite Bike"},
    {"image": "assets/image/cab premium.png", "title": "Cab Premium"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// _____APPBAR_________///
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: InkWell(
          /// when click on search box open search screen
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SearchScreen()));
          },

          /// here we apply hero animation
          child: Container(
              height: 40,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12.withOpacity(0.05)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    const Icon(Icons.search_rounded),
                    const SizedBox(
                      width: 10,
                    ),
                    Hero(
                      tag: "anim",
                      child: Text(
                        "Where are you going?",
                        style: myTextStyle20(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
      backgroundColor: Colors.white,

      /// ________________BODY_________________///
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore",
                    style: myTextStyle18(fontWeight: FontWeight.bold),
                  ),

                  /// View All Button , click on onPress bottom Sheet
                  /// __________________________VIEW ALL_____________________________///
                  TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          showDragHandle: true,
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 300,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text(
                                      "All Services ",
                                      style: myTextStyle22(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: GridView.builder(
                                      itemCount: data.length,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 4),
                                      itemBuilder: (context, index) {
                                        /// here we call my explore card
                                        return InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: MyExploreCard(
                                            imagePath: data[index]['image'],
                                            title: data[index]['title'],
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "View All",
                        style: myTextStyle15(
                            textColor: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),

            /// Here we show Rapido servie
            /// Create custom Card ExploreCard
            /// Here we call
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyExploreCard(
                    imagePath: "assets/image/parcel.png",
                    title: "Parcel",
                  ),
                  MyExploreCard(
                    imagePath: "assets/image/auto.png",
                    title: "Auto",
                  ),
                  MyExploreCard(
                    imagePath: "assets/image/cab economy.png",
                    title: "Cab Economy",
                  ),
                  MyExploreCard(
                    imagePath: "assets/image/motorbike.png",
                    title: "Bike",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// here we show auto image slider for banner showing

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                  items: bannerImage,
                  options: CarouselOptions(
                    height: 100,
                    aspectRatio: 16 / 3,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 900),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),

            /// SAVE MORE WITH RAPIDO
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Save More With Rapido",
                style: myTextStyle20(textColor: Colors.black87),
              ),
            ),

            /// here we create custom card
            /// here we call my save card

            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    /// Airport
                    MySaveMoreCard(
                        title: "Airport",
                        imagePath: "assets/image/AirPort-icon.png"),
                    const SizedBox(
                      width: 15,
                    ),

                    /// Railway Station
                    MySaveMoreCard(
                        title: "Railway station",
                        imagePath: "assets/image/railway.png"),
                    const SizedBox(
                      width: 15,
                    ),

                    /// Bus stand
                    MySaveMoreCard(
                        title: "Bus Stand",
                        imagePath: "assets/image/bus-removebg-preview.png"),
                  ],
                ),
              ),
            ),

            /// here we show single poster
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/image/rapiod poster 2.png",
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// last background poster show
            Stack(children: [
              Image.asset(
                "assets/image/childrens-pattern-600nw-367289369-removebg-preview.png",
                color: Colors.black38,
              ),
              Positioned(
                  left: 0,
                  top: 200,
                  child: Container(
                    color: Colors.white70.withOpacity(0.9),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "#goRapido",
                            style: myTextStyle40(
                                fontWeight: FontWeight.bold,
                                textColor: Colors.black54),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icon/india.png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Made For India",
                                style: myTextStyle18(),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icon/love (1).png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Crafted in Bengaluru",
                                style: myTextStyle18(),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ))
            ])
          ],
        ),
      ),

      /// ____________DRAWER IMPLEMENT HERE___________________///
      drawer: Drawer(
        width: double.infinity,
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            ///____________________HEADER PART______________________///
            DrawerHeader(
                child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_rounded)),
                    Text(
                      "Menu",
                      style: myTextStyle18(fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                /// back icon and manu text
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 1,
                            spreadRadius: 1),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black26)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/icon/user (2).png",
                          height: 40,
                        ),
                        title: Text(
                          "App Creator",
                          style: myTextStyle15(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "1234567890",
                          style: myTextStyle15(),
                        ),
                        trailing: const Icon(Icons.navigate_next_rounded),
                      )
                    ],
                  ),
                )
              ],
            )),

            /// Drawer Body

            ListTile(
              title: Text(
                "Help",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/handshake.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),

            ListTile(
              title: Text(
                "Parcel - Send Items",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/trolley (1).png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),

            ListTile(
              title: Text(
                "Payment",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/credit-card.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),

            ListTile(
              title: Text(
                "My Rides",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/refresh.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),
            ListTile(
              title: Text(
                "Safety",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/verified.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),

            ListTile(
              title: Text(
                "Refer and Earn",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Get 50",
                style: myTextStyle15(),
              ),
              leading: Image.asset(
                "assets/icon/cost.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),

            ListTile(
              title: Text(
                "My Reward",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/medal.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),

            ListTile(
              title: Text(
                "Power Pass",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/id-card.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),
            ListTile(
              title: Text(
                "Rapido Coin",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/dollar.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),
            ListTile(
              title: Text(
                "Notifications",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/notification.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),
            ListTile(
              title: Text(
                "Claims",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/security.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),

            ListTile(
              title: Text(
                "Setting",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/setting.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
            const Divider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: const Color(0x66ffcc75),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Earn money with Rapido",
                            style: myTextStyle15(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Become a Captain!",
                            style: myTextStyle15(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage("assets/image/Rapido_boy.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// ____________________________HOME SCREEN____________________________///
/// Simple Steps
/// Step 1
/// appBar With Drawer Icon => DONE
/// Step 2
/// Explore part => DONE
/// Step 3
/// Banner show => add dependency
/// DONE ALL TASK
///
/// step 4
/// Drawer Part Start => Complete
///
/// step 5
/// Bottom Sheet Show when Clink on View All => DONE
///
///
///
///
///
///
///
///
