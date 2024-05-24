import 'package:ageloc/data/PI_data.dart';
import 'package:ageloc/widgets/dotted_divider.dart';
import 'package:flutter/material.dart';
class BuildPhysicalIndex extends StatefulWidget {
  const BuildPhysicalIndex({super.key});

  @override
  State<BuildPhysicalIndex> createState() => BuildPhysicalIndexState();
}

class BuildPhysicalIndexState extends State<BuildPhysicalIndex> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              text: 'XX / 90',
              style: TextStyle(color: Color(0xFFFC6C0F),fontSize: 23),
              children: [
                TextSpan(text: ' Day(s)',style: TextStyle(color: Colors.black,fontSize: 15),),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Physical index',style: TextStyle(fontSize: 15),),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: const ImageIcon(AssetImage('images/gk60uK.tif.png'),),),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100,),
                    child: const TextField(style: TextStyle(fontSize: 15),decoration: InputDecoration(border: InputBorder.none),),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: const ImageIcon(AssetImage('images/plus.png'),color: Color(0xFFFC6C0F),),),
                  IconButton(onPressed: (){}, icon: const ImageIcon(AssetImage('images/share.png'),color: Color(0xFFFC6C0F),),),
                ],
              ),
            ],
          ),
          const DottedDivider(height: 20,),
          Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(PI_data.pi.length, (index) {
                Color textColor=Colors.black;
                // String oldIndex='';
                // String newIndex='';
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageIcon(AssetImage('images/${PI_data.pi[index].PI_icon}'),color: const Color(0xFFFC6C0F),),
                        const SizedBox(width: 20,),
                        SizedBox(width: 120,child: Text(PI_data.pi[index].PI_name),),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100,),
                          child: const TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(border: InputBorder.none),
                            // onChanged: (value) {
                            //   oldIndex=value;
                            // },
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(width: 60,child: Text(PI_data.pi[index].PI_type),),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100,),
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,color: textColor),
                            decoration: const InputDecoration(border: InputBorder.none),
                            // onChanged: (value) {
                            //   newIndex=value;
                            //   if(newIndex!=''&&oldIndex!='')
                            //     {
                            //         int numNew=int.parse(newIndex);
                            //         int numOld=int.parse(oldIndex);
                            //         if(numNew<numOld)
                            //           textColor=Colors.green;
                            //         else if(numNew==numOld)
                            //           textColor=Colors.orange;
                            //         else if(numNew>numOld)
                            //           textColor=Colors.red;
                            //         else
                            //           textColor=Colors.black;
                            //
                            //         print(textColor);
                            //         setState(() {});
                            //     }
                            // },

                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    const DottedDivider(height: 20,),
                  ],
                );
              },)
          ),
          Center(
            child: TextButton(
              onPressed: (){},
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(120,40)),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)),)),
                backgroundColor: MaterialStateProperty.all(const Color(0xFFFC6C0F)),
              ),
              child: const Text('Save',style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
