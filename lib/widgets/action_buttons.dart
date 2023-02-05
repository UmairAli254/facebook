import 'package:flutter/material.dart';


class ActionButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(18, 0, 0, 0),
              ),
              child: TextButton(
                onPressed: () {},
                child: Icon(Icons.search),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(18, 0, 0, 0),
              ),
              child: TextButton(
                onPressed: () {},
                child: Icon(Icons.menu),
                style: TextButton.styleFrom(
                  // backgroundColor: Colors.red,
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  // tapTargetSize: MaterialTapTargetSize.srink
                ),
              ),
            )
      ],
    );
  }
}