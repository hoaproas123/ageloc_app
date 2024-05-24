import 'package:flutter/material.dart';
class BuildBottomAppBar extends StatefulWidget {
  const BuildBottomAppBar({super.key});

  @override
  State<BuildBottomAppBar> createState() => BuildBottomAppBarState();
}

class BuildBottomAppBarState extends State<BuildBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15,right: 10,left: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFC6C0F),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){},icon: ImageIcon(const AssetImage('images/home.png'),color: Colors.white.withOpacity(0.8),size: 35,),),
            IconButton(onPressed: (){},icon:const ImageIcon(AssetImage('images/Consultant.png'),color: Colors.white,),),
            IconButton(onPressed: (){},icon:const ImageIcon(AssetImage('images/Y99dDJ.tif.png'),color: Colors.white,),),
            IconButton(onPressed: (){},icon:const ImageIcon(AssetImage('images/tr90.png'),color: Colors.white,),),
          ],
        ),
      ),
    );
  }
}

