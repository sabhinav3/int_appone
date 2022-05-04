import 'package:bloc/bloc.dart';
import 'package:int_appone/cubit/app_cubit_states.dart';
import 'package:int_appone/pages/welcome_page.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
