import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
              ),
              borderRadius: BorderRadius.circular(10.0)
            ) 
          ),
          SizedBox(width: 20.0),
          Text(
            "Anya Taylor", 
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)
          )
        ]
      ),
    );
  }
}

