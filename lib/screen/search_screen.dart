import 'package:flutter/material.dart';
import 'package:rapido_app_clone/utils/custom_text_style.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drop",
          style: myTextStyle18(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "For me",
                      style: myTextStyle18(fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                )),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.black54)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.do_not_disturb_on_total_silence,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  filled: false,
                                  hintText: "Your Current Location"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.do_not_disturb_on_total_silence,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  filled: false,
                                  hintText: "Drop location"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.black87)),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Hero(
                      tag: "anim",
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("Select on map"),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}

/// THIS IS MY SEARCH SCREEN
/// COMPLETE
