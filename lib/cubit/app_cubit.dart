

import 'package:bloc/bloc.dart';
import 'package:cubit/cubit/app_cubit_states.dart';
import 'package:cubit/models/data_model.dart';
import 'package:cubit/services/data_services.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;

  void getData()async{
    try{
      emit(LoadingState());
      places=await data.getInfo();
      emit(LoadedState(places));
    }catch(error){
      print(error);
    }
  }

  void detailsPage(DataModel data){
    emit(DetailState(data));
  }

}