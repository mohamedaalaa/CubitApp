import 'package:cubit/cubit/app_cubit.dart';
import 'package:cubit/pages/details_page.dart';
import 'package:cubit/pages/navpages/main_page.dart';
import 'package:cubit/pages/welcome_page.dart';
import 'package:cubit/services/data_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/app_cubit_logic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BlocProvider<AppCubits>(create: (context)=>AppCubits(data: DataServices()),child: AbbCubitLogic(),)
    );
  }
}
