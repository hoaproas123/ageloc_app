import 'package:ageloc/instance/appString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BuildAppBar extends StatefulWidget {
  const BuildAppBar({super.key});
  @override
  State<BuildAppBar> createState() => BuildAppBarState();
}

class BuildAppBarState extends State<BuildAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(AppString.title_appbar),
      leading: IconButton(onPressed: (){}, icon: const ImageIcon(AssetImage('images/bars.png')),),
      actions: [
        IconButton(onPressed: (){}, icon: const ImageIcon(AssetImage('images/plus.png')),),
        Stack(
            children: [
              IconButton(onPressed: (){},icon: const ImageIcon(AssetImage('images/bell.png')),),
              Positioned(
                top: 9,
                right: 8,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red
                  ),
                )
              )
          ]
        ),
        IconButton(onPressed: (){}, icon: const ImageIcon(AssetImage('images/comment-dots.png')),),
      ],
    );
  }
}
