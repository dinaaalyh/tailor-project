part of './main_fragment_bloc.dart';

@immutable
abstract class MainFragmentState {}

class MainFragmentInitial extends MainFragmentState {}

class MainFragmentDataLoaded extends MainFragmentState {
  MainFragmentDataLoaded({
    required this.selectedIndex
  });

  final int selectedIndex;
}