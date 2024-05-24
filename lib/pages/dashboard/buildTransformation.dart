import 'package:ageloc/data/TL_data.dart';
import 'package:flutter/material.dart';
class BuildTransformation extends StatefulWidget {
  const BuildTransformation({super.key});

  @override
  State<BuildTransformation> createState() => BuildTransformationState();
}

class BuildTransformationState extends State<BuildTransformation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('My Transformation',style: TextStyle(color: Color(0xFFFC6C0F),fontSize: 25),),
          const SizedBox(height: 10,),
          Text('Click here for testimonial guidelines. Your photos can be www by your constant. If your want a daunt then , phone process to Setting for configuration',
            style: TextStyle(color: Colors.grey.shade700),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30,),
          Wrap(
              spacing: 30,
              runSpacing: 30,
              children: List.generate(TL_data.timeline.length, (index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(TL_data.timeline[index]),
                        const Card(
                          child: Image(
                            image:AssetImage('images/plus.png'),
                            width: 80,
                            height: 120,
                            color: Color(0xFFFC6C0F),
                          ),
                        ),
                        const Text('Font'),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 50,),
                            Text('Share',style: TextStyle(color: Color(0xFFFC6C0F)),),
                          ],
                        ),
                        Card(
                          child: Image(
                            image:AssetImage('images/plus.png'),
                            width: 80,
                            height: 120,
                            color: Color(0xFFFC6C0F),
                          ),
                        ),
                        Text('Side'),
                      ],
                    ),
                  ],
                );
              })
          )
        ],
      ),
    );
  }
}
