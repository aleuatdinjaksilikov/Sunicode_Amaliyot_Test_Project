import 'package:flutter/material.dart';
import 'package:sunicode_amaliyot/widgets/banner_card.dart';
import 'package:sunicode_amaliyot/widgets/glass_card.dart';

import '../widgets/action_card.dart';
import '../widgets/feature_card.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final thirdOfScreenHeight = screenHeight / 2.5;

    return Scaffold(
      backgroundColor: Color(0xFFE8E8E8),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: thirdOfScreenHeight,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: Image.asset('assets/background.png', fit: BoxFit.cover),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildIconButton(
                          child: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/avatar.png'),
                          ),
                          onTap: () {},
                        ),
                        _buildIconButton(
                          child: Badge(
                            backgroundColor: Colors.redAccent,
                            smallSize: 8,
                            child: const Icon(
                              Icons.notifications_none_rounded,
                              color: Color(0xFF6E7887),
                              size: 26,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),

                    const SizedBox(height: 12,),

                    const GlassCard(city: "Tashkent", timer: "02:32:46", prayerName: "Maghrib"),

                    const SizedBox(height: 30,),

                    const BannerCard(),

                    const SizedBox(height: 10,),

                    Row(
                      children: [
                        Expanded(
                          child: FeatureCard(
                            title: 'Noor chat',
                            description: 'Get answers to all of your questions',
                            imagePath: 'assets/robot.png',
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: FeatureCard(
                            title: 'Hadith',
                            description: 'Get answers to all of your questions',
                            imagePath: 'assets/book_2.png',
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10,),

                    Row(
                      children: [
                        Expanded(
                          child: FeatureCard(
                            title: 'Sakinah',
                            description: 'Full tajweed rules',
                            imagePath: 'assets/headphones.png',
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: FeatureCard(
                            title: 'Noor Muallim',
                            description: 'Full tajweed rules',
                            imagePath: 'assets/letter.png',
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10,),

                    Row(
                      children: [
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: ActionCard(
                              title: 'Prayer\ntimes',
                              imagePath: 'assets/sand_time.png',
                              onTap: () {},
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: ActionCard(
                              title: 'Qiblah',
                              imagePath: 'assets/compass.png',
                              onTap: () {},
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: ActionCard(
                              title: 'Missed\nprayers',
                              imagePath: 'assets/prayers.png',
                              onTap: () {},
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: ActionCard(
                              title: 'Zikr',
                              imagePath: 'assets/counter.png',
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10,),

                    Row(
                      children: [
                        Expanded(
                          child: FeatureCard(
                            title: 'Hajj & Umrah',
                            description: 'All about Hajj and Umrah',
                            imagePath: 'assets/Kaaba_3d.png',
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: FeatureCard(
                            title: 'Bayan',
                            description: 'Manage your khutbah and more',
                            imagePath: 'assets/bayan_image.png',
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildIconButton({
  required Widget child,
  required VoidCallback onTap,
}) {
  return Container(
    width: 48,
    height: 48,
    decoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.9),
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Center(child: child),
      ),
    ),
  );
}
