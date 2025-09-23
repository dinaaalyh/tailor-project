import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tailor_project/data/state/bloc/main_fragment_bloc/main_fragment_bloc.dart';
import 'package:tailor_project/representative/screen/authentication/login_screen.dart';
import 'package:tailor_project/representative/screen/authentication/splash_screen.dart';
import 'package:tailor_project/representative/screen/favorite_fragment_screen.dart';
import 'package:tailor_project/representative/screen/home_fragment/home_fragment_screen.dart';
import 'package:tailor_project/representative/screen/main_fragment/main_fragment_screen.dart';
import 'package:tailor_project/representative/screen/show_product.dart';
import 'package:tailor_project/representative/screen/show_product_baju.dart';
import 'package:tailor_project/representative/screen/show_product_celana.dart';
import 'package:tailor_project/representative/widget/product_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static MainFragmentBloc mainFragmentBloc = MainFragmentBloc();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => mainFragmentBloc),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainFragmentScreen(),
      ),
    );
  }
}
