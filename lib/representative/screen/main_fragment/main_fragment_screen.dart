import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tailor_project/data/state/bloc/main_fragment_bloc/main_fragment_bloc.dart';
import 'package:tailor_project/main.dart';
import 'package:tailor_project/representative/screen/history_fragment/history_fragment_screen.dart';
import 'package:tailor_project/representative/screen/home_fragment/home_fragment_screen.dart';
import 'package:tailor_project/representative/screen/profile_fragment/profile_fragment_screen.dart';
import 'package:tailor_project/representative/widget/navigation_bar.dart';
import 'package:tailor_project/utils/assets.gen.dart';

class MainFragmentScreen extends StatelessWidget {
  const MainFragmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainFragmentBloc, MainFragmentState>(builder: (context, state) {
      if (state is MainFragmentDataLoaded) {
        final destinations = [
          getIcon(Assets.icons.homeDeactiveIcon.path, false),
          getIcon(Assets.icons.exploreDeactiveIcon.path, false),
          getIcon(Assets.icons.historyDeactiveIcon.path, false),
          getIcon(Assets.icons.profileDeactiveIcon.path, false),
        ];

        final selectedDestinations = [
          getIcon(Assets.icons.homeActiveIcon.path, true),
          getIcon(Assets.icons.exploreActiveIcon.path, true),
          getIcon(Assets.icons.historyActiveIcon.path, true),
          getIcon(Assets.icons.profileActiveIcon.path, true),
        ];

        final labels = [
          'Shop',
          'Explore',
          'History',
          'Profile'
        ];

        return Scaffold(
          backgroundColor: Colors.white,
          body: [
            const HomeFragmentScreen(),
            const HistoryFragmentScreen(),
            const HistoryFragmentScreen(),
            const ProfileFragmentScreen(),
          ][state.selectedIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: TailorNavigationBar(
              backgroundColor: Colors.white,
              indicatorColor: const Color(0xFF2E5A5A),
              indicatorShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              destinations: List.generate(
                4,
                (index) => TailorNavigationDestination(
                  icon: destinations[index].icon,
                  selectedIcon: selectedDestinations[index].icon,
                  label: labels[index],
                  labelColor: destinations[index].color,
                  selectedLabelColor: selectedDestinations[index].color,
                ),
              ),
              selectedIndex: state.selectedIndex,
              onDestinationSelected: (index) => MainApp.mainFragmentBloc.add(SetMainFragmentSelectedIndex(index: index)),
            ),
          ),
        );
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}

class IconWithColor {
  final Widget icon;
  final Color color;

  IconWithColor(this.icon, this.color);
}

IconWithColor getIcon(String assetName, bool isSelected) {
  final color = isSelected ? const Color(0xFF2E5A5A) : Colors.grey;
  return IconWithColor(
    SizedBox(
      width: 28,
      height: 28,
      child: Image.asset(
        assetName,
        color: color,
        fit: BoxFit.contain,
      ),
    ),
    color,
  );
}
