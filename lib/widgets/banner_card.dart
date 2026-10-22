import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        border: BoxBorder.all(color: Color(0XFF1BA876),width: 1),
        gradient: LinearGradient(
          begin: .topStart,
          end: .bottomEnd,
          colors: [Color(0XFF1BA876),Color(0xFFFFFFFF)])
      ),
      child: Stack(
        children: [
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   child: Image.asset('background_light_banner.png',fit: BoxFit.contain,)
          // ),

          Positioned(
            bottom: 0,
            right: 70,
            top: 75,
            child: Transform.scale(
              scale: 3.5,
              child: Image.asset('assets/book_1.png',fit: .contain,),
            )),

          Positioned(
            right: 50,
            top: 0,
            child: SizedBox(width: 62,height:
            67,child: Image.asset('assets/star.png',fit: .contain,),),
            ),

          Positioned(
            bottom: 0,
            left: 70,
            child: SizedBox(width: 38,height:
              42,child: Image.asset('assets/star.png',fit: .contain,),),
          ),

          Column(
            crossAxisAlignment: .start,
              children: [
                Text("Holy Quran",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'WorkSans',fontWeight: .bold),),
                const SizedBox(height: 5,),
                Text("Better experience for\nQuran memorization",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'WorkSans'),)
              ],
            )
        ],
      ),
    );
  }
}