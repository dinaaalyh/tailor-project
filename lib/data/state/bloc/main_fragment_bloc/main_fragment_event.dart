
part of './main_fragment_bloc.dart';

@immutable
abstract class MainFragmentEvent {}

class SetMainFragmentState extends MainFragmentEvent {
  SetMainFragmentState([this.state]);

  final MainFragmentState? state;
}

class SetMainFragmentToInitial extends MainFragmentEvent {}

class InitializeMainFragmentData extends MainFragmentEvent {}

class SetMainFragmentSelectedIndex extends MainFragmentEvent {
  SetMainFragmentSelectedIndex({
    required this.index
  });

  final int index;
}