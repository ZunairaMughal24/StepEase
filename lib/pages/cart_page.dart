import 'package:e_commerec/components/cart_items.dart';
import 'package:e_commerec/models/cart.dart';
import 'package:e_commerec/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Cart",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.getUserCart().length,
                      itemBuilder: (context, index) {
                        //get indiidual shoe
                        Shoe individualShoe = value.getUserCart()[index];

                        //return the cart item
                        return CartItem(shoe: individualShoe);
                      },
                    ),
                  )
                ],
              ),
            ));
  }
}
