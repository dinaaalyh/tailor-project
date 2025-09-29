import 'package:flutter/material.dart';
import 'package:tailor_project/representative/screen/home_fragment/widgets/menu_item.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';

class ProfileFragmentScreen extends StatelessWidget {
  const ProfileFragmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: bg,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(radius: 40, backgroundColor: grey2),
                  const SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("NiseuuDump", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      const Text("@niseuudump12", style: TextStyle(color: grey, fontSize: 12)),
                      const SizedBox(height: 12),
                      RichText(
                        text: const TextSpan(
                          text: "AlamatAlamatAlamatAlamatA",
                          style: TextStyle(fontSize: 12, color: black),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              MenuItem(
                icon: Assets.icons.profileSb,
                title: "Profile",
                screen: const ProfileFragmentScreen(),
              ),
              MenuItem(
                icon: Assets.icons.favSb,
                title: "Favourites",
                screen: const ProfileFragmentScreen(),
              ),
              MenuItem(
                icon: Assets.icons.cartSb,
                title: "Keranjang",
                screen: const ProfileFragmentScreen(),
              ),
              MenuItem(
                icon: Assets.icons.addressSb,
                title: "Alamat",
                screen: const ProfileFragmentScreen(),
              ),
              MenuItem(
                icon: Assets.icons.infoSb,
                title: "Tentang Kita",
                screen: const ProfileFragmentScreen(),
              ),
              MenuItem(
                icon: Assets.icons.logoutSb,
                title: "Logout",
                screen: const ProfileFragmentScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
