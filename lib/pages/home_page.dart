import 'package:flutter/material.dart';
import 'package:shop_ui/asset/color.dart';
import 'package:shop_ui/widget/item_home.dart';
import 'package:shop_ui/widget/itemhome.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(30),
              width: 120,
              height: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: container2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 10,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.sort,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Image.asset("images/logo.png"),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: CircleAvatar(
                          radius: 15,
                          child: Image.asset(
                            "images/Avatar.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 1,
                    ),
                    child: Text(
                      "Morning Michel",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 49,
                    ),
                    child: Text(
                      "Experience Fashion with Our Shoe Lineup",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(35.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 33,
                  ),
                  child: Text(
                    "New Collection",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Row(children: [
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          // return Padding(
                          //   padding: const EdgeInsets.symmetric(
                          //     horizontal: 20,
                          //     vertical: 20,
                          //   ),
                          return Container(
                            height: 20,
                            width: 100,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: button,
                            ),
                            child: Text(items[index].name),
                          );
                        },
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
