import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'main_fragment_event.dart';

part 'main_fragment_state.dart';

class MainFragmentBloc extends Bloc<MainFragmentEvent, MainFragmentState> {
  MainFragmentBloc() : super(_mainFragmentDataLoaded) {
    on<SetMainFragmentState>((event, emit) => emit(event.state ?? _mainFragmentDataLoaded));

    on<SetMainFragmentToInitial>((event, emit) {
      emit(MainFragmentInitial());
    });

    on<SetMainFragmentSelectedIndex>((event, emit) {
      _selectedIndex = event.index;
      emit(_mainFragmentDataLoaded);
    });

    on<InitializeMainFragmentData>((event, emit) {
      emit(_mainFragmentDataLoaded);
    });
  }
  
  static int _selectedIndex = 0;
  
  static MainFragmentDataLoaded get _mainFragmentDataLoaded => MainFragmentDataLoaded(selectedIndex: _selectedIndex);
}
