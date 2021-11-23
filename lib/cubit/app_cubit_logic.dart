

import 'package:cubit/cubit/app_cubit.dart';
import 'package:cubit/cubit/app_cubit_states.dart';
import 'package:cubit/pages/details_page.dart';
import 'package:cubit/pages/navpages/home_page.dart';
import 'package:cubit/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AbbCubitLogic extends StatefulWidget {
  const AbbCubitLogic({Key? key}) : super(key: key);

  @override
  _AbbCubitLogicState createState() => _AbbCubitLogicState();
}

class _AbbCubitLogicState extends State<AbbCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits,CubitStates>(
        builder: (context,state){
          if(state is WelcomeState){
            return  const WelcomePage();
          }if(state is LoadingState){
            return const Center(child: CircularProgressIndicator(),);
          }
          if(state is LoadedState){
            return const HomePage();
          }
          if(state is DetailState){
            return const DetailsPage();
          }
          else{
            return Container();
          }
        },
      ),
    );
  }
}
