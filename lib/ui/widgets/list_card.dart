import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/shared/themes/app_theme.dart';

class ListCard extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  const ListCard({Key? key, this.controller, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text("Product Name"),
                Text("Unit"),
                Text(
                  " Unit Price",
                  textAlign: TextAlign.start,
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Batch No"),
                Text("Expire Date"),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppTheme.mainColor2,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
