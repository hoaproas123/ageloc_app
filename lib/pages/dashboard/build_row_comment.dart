import 'package:flutter/material.dart';
class BuildRowComment extends StatefulWidget {
  const BuildRowComment({super.key});

  @override
  State<BuildRowComment> createState() => BuildRowCommentState();
}

class BuildRowCommentState extends State<BuildRowComment> {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      runSpacing: 10,
      children: [
        Text('Legend:'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(backgroundColor: Colors.green,radius: 10,),
            SizedBox(width: 10,),
            Text('Doing well'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(backgroundColor: Colors.orange,radius: 10),
            SizedBox(width: 10,),
            Text('Constant'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(backgroundColor: Colors.red,radius: 10,),
            SizedBox(width: 10,),
            Text('Need help'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(backgroundColor: Colors.black,radius: 10,),
            SizedBox(width: 10,),
            Text('Last record'),
          ],
        )
      ],
    );
  }
}
