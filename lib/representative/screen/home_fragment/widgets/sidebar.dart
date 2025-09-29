import 'package:flutter/material.dart';
import 'package:tailor_project/representative/screen/profile_fragment/profile_fragment_screen.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';
import 'menu_item.dart';

class SideBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text("My Profile", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 30),
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
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bg,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text("Edit Profile", style: TextStyle(color: white, fontSize: 12)),
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