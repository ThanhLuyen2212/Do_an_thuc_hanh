import 'package:flutter/material.dart';

class CheckOutCart extends StatelessWidget {
  double sum;
  CheckOutCart({required this.sum});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen,
            ),
            onPressed: () {},
            child: Text(
              "Sum:${sum}",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  side: BorderSide(color: Colors.green)),
              backgroundColor: Colors.green,
            ),
            onPressed: () {},
            child: Text("Check out".toUpperCase(),
                style: TextStyle(fontSize: 14, color: Colors.white)),
          ),
        )
      ],
    );
  }
}
