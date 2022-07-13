import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double width = 200;
  double height = 200;

  double? animation() {
    setState(() {
      width == 200 ? width = 600 : width = 200;
      height == 200 ? height = 600 : height = 200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
            InkWell(
              onTap: (){
                animation();

              },
              child: AnimatedContainer(
                
                duration: const Duration(milliseconds: 900),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(5.h),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1531934788018-04c3cd417b80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG1hY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
                            
                            ),fit: BoxFit.cover)),
                curve: Curves.easeInOutBack,
                
                width: width,
                height: height,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
