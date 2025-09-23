import 'package:flutter/material.dart';
import 'package:tailor_project/utils/colors.dart';
import 'widgets/widgets.dart';

class HomeFragmentScreen extends StatefulWidget {
  const HomeFragmentScreen({super.key});

  @override
  State<HomeFragmentScreen> createState() => _HomeFragmentScreenState();
}

class _HomeFragmentScreenState extends State<HomeFragmentScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideBar(scaffoldKey: _scaffoldKey),
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroBanner(scaffoldKey: _scaffoldKey),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for products',
                    hintStyle: const TextStyle(color: hint, fontSize: 14),
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: searchBar,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: border),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: border),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: textColorBlue, width: 2),
                    ),
                  ),
                ),
              ),
              const DesignerCollection(),
              const TopTrends(),
            ],
          ),
        ),
      ),
    );
  }
}
