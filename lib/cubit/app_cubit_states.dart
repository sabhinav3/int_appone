import 'package:equatable/equatable.dart';
import 'package:int_appone/model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

// this state would be triggered when we're trying to load the data
class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

// this state would be triggered once the data has been stored successfully
class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object> get props => [places];
}
