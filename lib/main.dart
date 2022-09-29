import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:types_of_state_management/home_page.dart';
import 'package:types_of_state_management/types/provider_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //for provider
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProviderState(),
      //for get getBuilder, getX, OBX
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
