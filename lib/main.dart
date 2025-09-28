import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tailor_project/data/state/bloc/main_fragment_bloc/main_fragment_bloc.dart';
import 'package:tailor_project/representative/screen/detail_fragment/product_detail_screen.dart';
import 'package:tailor_project/representative/screen/keranjang_fragment/keranjang_screen.dart';
import 'package:tailor_project/representative/screen/main_fragment/main_fragment_screen.dart';

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
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: KeranjangScreen(),
      ),
    );
  }
}
