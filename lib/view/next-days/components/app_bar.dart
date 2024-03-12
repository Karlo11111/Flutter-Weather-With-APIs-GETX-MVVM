import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather/res/images/image_assets.dart';
import 'package:weather/view/home/home_screen.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),)),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.blue,size: 20,),
            ),
          ),
          const Text('Idućih 14 dana',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          const SizedBox(),
        ],
      ),
    );
  }
}
