import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter_app/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncreamentState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncreament({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncreamentState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncreamentState());
    }
  }
}
