import 'package:e_commerec/components/shoe_tile.dart';
import 'package:e_commerec/models/cart.dart';
import 'package:e_commerec/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyShopPage extends StatefulWidget {
  const MyShopPage({super.key});

  @override
  State<MyShopPage> createState() => _MyShopPageState();
}

class _MyShopPageState extends State<MyShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemsToCart(shoe);
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text(
                ' Successfully Added!',
                style: TextStyle(fontSize: 15),
              ),
              content: Text("Check your cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //searchbar

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 23),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),

          //messages
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "Everyone Flies, some fly longer than others",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          //hot picks
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Picks🔥",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "View all",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 85, 182, 228)),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: value.getShoeList().length,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];

                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 0, left: 15, right: 15),
            child: Divider(color: Colors.white),
          )
        ],
      ),
    );
  }
}
