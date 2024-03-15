import 'package:flutter/material.dart';
import 'package:siakad_application/bloc/login/login_bloc.dart';
import 'package:siakad_application/pages/auth/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => LoginBloc(),
        child: const SplashPage(),
      ),
    );
  }
}
