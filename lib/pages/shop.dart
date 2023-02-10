import "package:flutter/material.dart";
import "../models/shop_model.dart";

class Shop extends StatefulWidget {
  @override
  ShopState createState() => ShopState();
}

class ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // Top Bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Marketplace",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(104, 199, 196, 196),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                      onPressed: () {
                        print("Search Products");
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 29,
                      ),
                      tooltip: "Serach Products"),
                )
              ],
            ),
          ),
          // Divider
          const Divider(thickness: 5, color: Colors.black12),

          // Shop show here
          Padding(
            padding: const EdgeInsets.all(8),
            child: Wrap(
              spacing: 20,
              children: [
                for (var i = 0; i < shop_data.length; i++) ...[
                  GestureDetector(
                    onTap: () {
                      print("View Product!");
                    },
                    child: Container(
                      height: 250,
                      width: 180,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(221, 227, 222, 222),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(3),
                            child: Image(
                              image: AssetImage(shop_data[i].pic),
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            alignment: const Alignment(-1, -1),
                            child: Text(
                              shop_data[i].title,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(13),
                            child: Text(
                              "\$${shop_data[i].price}",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
