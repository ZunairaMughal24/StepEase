import 'package:e_commerec/models/cart.dart';
import 'package:e_commerec/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListTile(
            leading: Image.asset(widget.shoe.imagesPath),
            title: Text(widget.shoe.name),
            subtitle: Text(
              // ignore: prefer_interpolation_to_compose_strings
              '\$${widget.shoe.price}',
              style: const TextStyle(fontSize: 12),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.grey[400],
              ),
              onPressed: () => removeItemFromCart(widget.shoe),
            ),
          ),
        ));
  }
}
