import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/themes/app_theme.dart';

class CartCard extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  const CartCard({Key? key, this.controller, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            // alignment: Alignment.bottomRight,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppTheme.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Icon(
              Icons.close,
              size: 15,
            )),
        Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Name",
                      style: AppTheme.normalBold,
                    ),
                    Text("Expire Date"),
                    Text(
                      "  Price",
                      style: AppTheme.normalBold,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Batch No"),
                    Row(
                      children: [
                        Text(
                          'Quantity',
                          style: AppTheme.normalBold,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        SizedBox(
                          width: 25,
                          height: 20,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                // border: OutlineInputBorder(),
                                ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text('Unit'),
                      ],
                    )
                  ],
                )
              ],
            )),
      ],
    );
  }
}
