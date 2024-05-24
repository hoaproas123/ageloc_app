import 'package:flutter/material.dart';
class BuildHeading extends StatefulWidget {
  const BuildHeading({super.key});

  @override
  State<BuildHeading> createState() => BuildHeadingState();
}

class BuildHeadingState extends State<BuildHeading> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/unsplash_RDcEWH5hSDE.png',
                ),
                radius: 90,
              ),
              SizedBox(height: 20,),
              Text('User Name',style: TextStyle(fontSize: 25,color: Color(0xFFFC6C0F),),)
            ],
          ),
        ),
        Positioned(
          right: 1,
          top: 80,
          child: ImageIcon(
            AssetImage('images/Group 1325.png'),
            size: 60,
            color: Color(0xFFFC6C0F),
          ),

        ),
        Positioned(
          right: 1,
          top: 120,
          child: ImageIcon(
            AssetImage('images/Group 1325.png'),
            size: 60,
            color: Color(0xFFFC6C0F),
          ),

        ),
      ],
    );
  }
}
